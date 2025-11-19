@interface VUIMediaEntityGroup
- (BOOL)isEqual:(id)a3;
- (VUIMediaEntityGroup)init;
- (VUIMediaEntityGroup)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMediaEntityGroup

- (VUIMediaEntityGroup)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntityGroup)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMediaEntityGroup;
  v5 = [(VUIMediaEntityGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VUIMediaEntityGroup alloc] initWithIdentifier:self->_identifier];
  v5 = [(NSArray *)self->_mediaEntities copy];
  mediaEntities = v4->_mediaEntities;
  v4->_mediaEntities = v5;

  v7 = [(NSArray *)self->_sortIndexes copy];
  sortIndexes = v4->_sortIndexes;
  v4->_sortIndexes = v7;

  return v4;
}

- (unint64_t)hash
{
  v3 = [(VUIMediaEntityGroup *)self identifier];
  v4 = [v3 hash];

  v5 = [(VUIMediaEntityGroup *)self mediaEntities];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIMediaEntityGroup *)self sortIndexes];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIMediaEntityGroup *)self identifier];
        v8 = [(VUIMediaEntityGroup *)v6 identifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_23;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v14 = [(VUIMediaEntityGroup *)self mediaEntities];
        v15 = [(VUIMediaEntityGroup *)v6 mediaEntities];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {

LABEL_18:
          v18 = [(VUIMediaEntityGroup *)self sortIndexes];
          v19 = [(VUIMediaEntityGroup *)v6 sortIndexes];
          v9 = v18;
          v20 = v19;
          v11 = v20;
          if (v9 == v20)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0;
            if (v9 && v20)
            {
              v12 = [v9 isEqual:v20];
            }
          }

          goto LABEL_23;
        }

        v12 = 0;
        if (v9 && v16)
        {
          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
LABEL_16:
            v12 = 0;
LABEL_24:

            goto LABEL_25;
          }

          goto LABEL_18;
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = VUIMediaEntityGroup;
  v4 = [(VUIMediaEntityGroup *)&v18 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaEntityGroup *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntityGroup *)self mediaEntities];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaEntities", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaEntityGroup *)self sortIndexes];
  v13 = [v11 stringWithFormat:@"%@=%@", @"sortIndexes", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end