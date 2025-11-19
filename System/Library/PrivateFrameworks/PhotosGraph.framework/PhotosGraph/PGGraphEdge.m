@interface PGGraphEdge
- (BOOL)isEqualToEdge:(id)a3;
- (PGGraphEdge)initWithSourceNode:(id)a3 targetNode:(id)a4;
- (id)keywordDescription;
- (id)propertyForKey:(id)a3;
- (unint64_t)propertiesCount;
- (void)setWeight:(float)a3;
@end

@implementation PGGraphEdge

- (unint64_t)propertiesCount
{
  v2 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyForKey:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PGLogging sharedLogging];
  v6 = [v5 loggingConnection];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = objc_opt_class();
  }

  v10.receiver = self;
  v10.super_class = PGGraphEdge;
  v7 = [(MAEdge *)&v10 propertyForKey:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqualToEdge:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[PGGraphEdge domain](self, "domain"), v5 == [v4 domain]))
  {
    v6 = [(PGGraphEdge *)self label];
    v7 = [v4 label];
    if ((v6 == v7 || [v6 isEqualToString:v7]) && -[MAEdge hasEqualPropertiesToEdge:](self, "hasEqualPropertiesToEdge:", v4))
    {
      v8 = [(MAEdge *)self sourceNode];
      v9 = [(MAEdge *)self targetNode];
      v10 = [v4 sourceNode];
      v11 = [v4 targetNode];
      v12 = (v8 == v10 || [v8 isEqualToNode:v10]) && (v9 == v11 || (objc_msgSend(v9, "isEqualToNode:", v11) & 1) != 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setWeight:(float)a3
{
  v3 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v3);
}

- (id)keywordDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PGGraphEdge *)self label];
  v5 = [(PGGraphEdge *)self propertyForKey:@"name"];
  v6 = [v3 stringWithFormat:@"[%@] %@", v4, v5];

  return v6;
}

- (PGGraphEdge)initWithSourceNode:(id)a3 targetNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGGraphEdge;
  return [(MAEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

@end