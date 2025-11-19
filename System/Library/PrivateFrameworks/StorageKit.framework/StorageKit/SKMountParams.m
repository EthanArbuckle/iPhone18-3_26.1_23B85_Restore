@interface SKMountParams
- (SKMountParams)init;
- (SKMountParams)initWithParams:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)redactedDescription;
@end

@implementation SKMountParams

- (SKMountParams)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(SKMountParams *)self initWithParams:v3];

  return v4;
}

- (SKMountParams)initWithParams:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SKMountParams;
  v6 = [(SKMountParams *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] set];
    allParams = v6->_allParams;
    v6->_allParams = v7;

    v6->_readOnly = [v5 containsObject:@"rdonly"];
    v6->_noBrowse = [v5 containsObject:@"nobrowse"];
    mountPoint = v6->_mountPoint;
    v6->_mountPoint = 0;

    objc_storeStrong(&v6->_allParams, a3);
    *&v6->_recursive = 257;
    v6->_raidTraverse = 1;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v18[5] = *MEMORY[0x277D85DE8];
  v3 = [(SKMountParams *)self allParams];
  v4 = [v3 mutableCopy];

  if ([(SKMountParams *)self readOnly])
  {
    [v4 addObject:@"rdonly"];
  }

  if ([(SKMountParams *)self noBrowse])
  {
    [v4 addObject:@"nobrowse"];
  }

  v5 = MEMORY[0x277CBEB38];
  v17[0] = @"kSKDiskMountOptionToolOptions";
  v6 = [v4 allObjects];
  v18[0] = v6;
  v17[1] = @"kSKDiskMountOptionRecursive";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKMountParams recursive](self, "recursive")}];
  v18[1] = v7;
  v17[2] = @"kSKDiskMountOptionRecursiveRAID";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKMountParams raidTraverse](self, "raidTraverse")}];
  v18[2] = v8;
  v17[3] = @"kSKDiskMountOptionForce";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKMountParams force](self, "force")}];
  v17[4] = kSKDiskMountOptionWithoutEFI;
  v18[3] = v9;
  v18[4] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v11 = [v5 dictionaryWithDictionary:v10];

  v12 = [(SKMountParams *)self mountPoint];

  if (v12)
  {
    v13 = [(SKMountParams *)self mountPoint];
    v14 = [v13 path];
    [v11 setObject:v14 forKeyedSubscript:@"kSKDiskMountOptionMountPoint"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SKMountParams alloc];
  v5 = [(SKMountParams *)self allParams];
  v6 = [(SKMountParams *)v4 initWithParams:v5];

  v7 = [(SKMountParams *)self mountPoint];
  [(SKMountParams *)v6 setMountPoint:v7];

  [(SKMountParams *)v6 setRecursive:[(SKMountParams *)self recursive]];
  [(SKMountParams *)v6 setForce:[(SKMountParams *)self force]];
  [(SKMountParams *)v6 setRaidTraverse:[(SKMountParams *)self raidTraverse]];
  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSSet *)self->_allParams count];
  if (self->_mountPoint)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  v8 = [v3 stringWithFormat:@"<%@: { allParams: %lu, mount point: %@, recursive: %d, force: %d }>", v5, v6, v7, self->_recursive, self->_force];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: { allParams: %@, mount point: %@, recursive: %d, force: %d }>", v5, self->_allParams, self->_mountPoint, self->_recursive, self->_force];

  return v6;
}

@end