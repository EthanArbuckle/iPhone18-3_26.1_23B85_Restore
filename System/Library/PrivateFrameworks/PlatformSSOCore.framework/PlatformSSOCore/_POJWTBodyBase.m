@interface _POJWTBodyBase
- (NSString)description;
- (_POJWTBodyBase)init;
- (_POJWTBodyBase)initWithDictionary:(id)a3;
- (_POJWTBodyBase)initWithJWTData:(id)a3;
- (id)dataRepresentation;
@end

@implementation _POJWTBodyBase

- (_POJWTBodyBase)init
{
  v6.receiver = self;
  v6.super_class = _POJWTBodyBase;
  v2 = [(_POJWTBodyBase *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (_POJWTBodyBase)initWithJWTData:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _POJWTBodyBase;
  v5 = [(_POJWTBodyBase *)&v17 init];
  if (v5)
  {
    v16 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:17 error:&v16];
    v7 = v16;
    v8 = v7;
    if (!v6)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __34___POJWTBodyBase_initWithJWTData___block_invoke;
      v14[3] = &unk_279A3DC48;
      v15 = v7;
      v11 = v7;
      v12 = __34___POJWTBodyBase_initWithJWTData___block_invoke(v14);

      v10 = 0;
      goto LABEL_6;
    }

    data = v5->_data;
    v5->_data = v6;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (_POJWTBodyBase)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _POJWTBodyBase;
  v5 = [(_POJWTBodyBase *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (id)dataRepresentation
{
  v2 = [(NSMutableDictionary *)self->_data mutableCopy];
  v5 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:9 error:&v5];

  return v3;
}

- (NSString)description
{
  v2 = [(NSMutableDictionary *)self->_data mutableCopy];
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:9 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

@end