@interface REElementUpdateOperation
+ (id)insertElement:(id)a3 atPath:(id)a4;
+ (id)moveElement:(id)a3 fromPath:(id)a4 toPath:(id)a5;
+ (id)refreshElement:(id)a3 atPath:(id)a4;
+ (id)reloadElement:(id)a3 atPath:(id)a4;
+ (id)removeElement:(id)a3 atPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REElementUpdateOperation)initWithElement:(id)a3 path:(id)a4 newPath:(id)a5 updateType:(unint64_t)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation REElementUpdateOperation

- (REElementUpdateOperation)initWithElement:(id)a3 path:(id)a4 newPath:(id)a5 updateType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = REElementUpdateOperation;
  v14 = [(REElementUpdateOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_element, a3);
    objc_storeStrong(&v15->_path, a4);
    objc_storeStrong(&v15->_movedToPath, a5);
    v15->_type = a6;
  }

  return v15;
}

+ (id)reloadElement:(id)a3 atPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 path:v5 newPath:0 updateType:0];

  return v7;
}

+ (id)insertElement:(id)a3 atPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 path:v5 newPath:0 updateType:2];

  return v7;
}

+ (id)removeElement:(id)a3 atPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 path:v5 newPath:0 updateType:1];

  return v7;
}

+ (id)moveElement:(id)a3 fromPath:(id)a4 toPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithElement:v9 path:v8 newPath:v7 updateType:3];

  return v10;
}

+ (id)refreshElement:(id)a3 atPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:v6 path:v5 newPath:0 updateType:4];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(REElement *)self->_element hash];
  v4 = [(RESectionPath *)self->_path hash]^ v3;
  return v4 ^ [(RESectionPath *)self->_movedToPath hash]^ self->_type;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REElement *)self->_element isEqual:v5[1]]&& [(RESectionPath *)self->_path isEqual:v5[2]]&& [(RESectionPath *)self->_movedToPath isEqual:v5[3]]&& self->_type == v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  type = self->_type;
  v4 = &stru_283B97458;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_14;
      }

      v8 = MEMORY[0x277CCACA8];
      v6 = [(REElementUpdateOperation *)self path];
      v7 = REStringForSectionPath(v6);
      [v8 stringWithFormat:@" Remove: %@", v7];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v6 = [(REElementUpdateOperation *)self path];
      v7 = REStringForSectionPath(v6);
      [v13 stringWithFormat:@" Reload: %@", v7];
    }

    goto LABEL_12;
  }

  if (type == 2)
  {
    v9 = MEMORY[0x277CCACA8];
    v6 = [(REElementUpdateOperation *)self path];
    v7 = REStringForSectionPath(v6);
    [v9 stringWithFormat:@" Insert: %@", v7];
    v4 = LABEL_12:;
    goto LABEL_13;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      goto LABEL_14;
    }

    v5 = MEMORY[0x277CCACA8];
    v6 = [(REElementUpdateOperation *)self path];
    v7 = REStringForSectionPath(v6);
    [v5 stringWithFormat:@" Refresh: %@", v7];
    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  v6 = [(REElementUpdateOperation *)self path];
  v7 = REStringForSectionPath(v6);
  v11 = [(REElementUpdateOperation *)self movedToPath];
  v12 = REStringForSectionPath(v11);
  v4 = [v10 stringWithFormat:@" Move: %@ → %@", v7, v12];

LABEL_13:
LABEL_14:
  v17.receiver = self;
  v17.super_class = REElementUpdateOperation;
  v14 = [(REElementUpdateOperation *)&v17 description];
  v15 = [v14 stringByAppendingString:v4];

  return v15;
}

@end