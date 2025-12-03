@interface REElementUpdateOperation
+ (id)insertElement:(id)element atPath:(id)path;
+ (id)moveElement:(id)element fromPath:(id)path toPath:(id)toPath;
+ (id)refreshElement:(id)element atPath:(id)path;
+ (id)reloadElement:(id)element atPath:(id)path;
+ (id)removeElement:(id)element atPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (REElementUpdateOperation)initWithElement:(id)element path:(id)path newPath:(id)newPath updateType:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation REElementUpdateOperation

- (REElementUpdateOperation)initWithElement:(id)element path:(id)path newPath:(id)newPath updateType:(unint64_t)type
{
  elementCopy = element;
  pathCopy = path;
  newPathCopy = newPath;
  v17.receiver = self;
  v17.super_class = REElementUpdateOperation;
  v14 = [(REElementUpdateOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_element, element);
    objc_storeStrong(&v15->_path, path);
    objc_storeStrong(&v15->_movedToPath, newPath);
    v15->_type = type;
  }

  return v15;
}

+ (id)reloadElement:(id)element atPath:(id)path
{
  pathCopy = path;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy path:pathCopy newPath:0 updateType:0];

  return v7;
}

+ (id)insertElement:(id)element atPath:(id)path
{
  pathCopy = path;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy path:pathCopy newPath:0 updateType:2];

  return v7;
}

+ (id)removeElement:(id)element atPath:(id)path
{
  pathCopy = path;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy path:pathCopy newPath:0 updateType:1];

  return v7;
}

+ (id)moveElement:(id)element fromPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  elementCopy = element;
  v10 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy path:pathCopy newPath:toPathCopy updateType:3];

  return v10;
}

+ (id)refreshElement:(id)element atPath:(id)path
{
  pathCopy = path;
  elementCopy = element;
  v7 = [objc_alloc(objc_opt_class()) initWithElement:elementCopy path:pathCopy newPath:0 updateType:4];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(REElement *)self->_element hash];
  v4 = [(RESectionPath *)self->_path hash]^ v3;
  return v4 ^ [(RESectionPath *)self->_movedToPath hash]^ self->_type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
      path = [(REElementUpdateOperation *)self path];
      v7 = REStringForSectionPath(path);
      [v8 stringWithFormat:@" Remove: %@", v7];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      path = [(REElementUpdateOperation *)self path];
      v7 = REStringForSectionPath(path);
      [v13 stringWithFormat:@" Reload: %@", v7];
    }

    goto LABEL_12;
  }

  if (type == 2)
  {
    v9 = MEMORY[0x277CCACA8];
    path = [(REElementUpdateOperation *)self path];
    v7 = REStringForSectionPath(path);
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
    path = [(REElementUpdateOperation *)self path];
    v7 = REStringForSectionPath(path);
    [v5 stringWithFormat:@" Refresh: %@", v7];
    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  path = [(REElementUpdateOperation *)self path];
  v7 = REStringForSectionPath(path);
  movedToPath = [(REElementUpdateOperation *)self movedToPath];
  v12 = REStringForSectionPath(movedToPath);
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