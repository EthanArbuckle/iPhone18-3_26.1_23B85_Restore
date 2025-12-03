@interface PGGraphEdge
- (BOOL)isEqualToEdge:(id)edge;
- (PGGraphEdge)initWithSourceNode:(id)node targetNode:(id)targetNode;
- (id)keywordDescription;
- (id)propertyForKey:(id)key;
- (unint64_t)propertiesCount;
- (void)setWeight:(float)weight;
@end

@implementation PGGraphEdge

- (unint64_t)propertiesCount
{
  v2 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyForKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = +[PGLogging sharedLogging];
  loggingConnection = [v5 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = objc_opt_class();
  }

  v10.receiver = self;
  v10.super_class = PGGraphEdge;
  v7 = [(MAEdge *)&v10 propertyForKey:keyCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqualToEdge:(id)edge
{
  edgeCopy = edge;
  if (edgeCopy && (v5 = -[PGGraphEdge domain](self, "domain"), v5 == [edgeCopy domain]))
  {
    label = [(PGGraphEdge *)self label];
    label2 = [edgeCopy label];
    if ((label == label2 || [label isEqualToString:label2]) && -[MAEdge hasEqualPropertiesToEdge:](self, "hasEqualPropertiesToEdge:", edgeCopy))
    {
      sourceNode = [(MAEdge *)self sourceNode];
      targetNode = [(MAEdge *)self targetNode];
      sourceNode2 = [edgeCopy sourceNode];
      targetNode2 = [edgeCopy targetNode];
      v12 = (sourceNode == sourceNode2 || [sourceNode isEqualToNode:sourceNode2]) && (targetNode == targetNode2 || (objc_msgSend(targetNode, "isEqualToNode:", targetNode2) & 1) != 0);
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

- (void)setWeight:(float)weight
{
  v3 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v3);
}

- (id)keywordDescription
{
  v3 = MEMORY[0x277CCACA8];
  label = [(PGGraphEdge *)self label];
  v5 = [(PGGraphEdge *)self propertyForKey:@"name"];
  v6 = [v3 stringWithFormat:@"[%@] %@", label, v5];

  return v6;
}

- (PGGraphEdge)initWithSourceNode:(id)node targetNode:(id)targetNode
{
  v5.receiver = self;
  v5.super_class = PGGraphEdge;
  return [(MAEdge *)&v5 initWithSourceNode:node targetNode:targetNode];
}

@end