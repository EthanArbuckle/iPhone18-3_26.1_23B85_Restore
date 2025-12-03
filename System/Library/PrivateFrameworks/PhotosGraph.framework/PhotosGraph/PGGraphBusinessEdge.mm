@interface PGGraphBusinessEdge
- (BOOL)hasProperties:(id)properties;
- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgeDescription;
- (id)initFromSourceNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate;
- (id)propertyDictionary;
- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys;
@end

@implementation PGGraphBusinessEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGGraphBusinessEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v10 edgeDescription];
  v5 = edgeDescription;
  if (self->_hasRoutineInfo)
  {
    v6 = @"Has Routine Info, ";
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  universalStartDate = self->_universalStartDate;
  v8 = [v3 stringWithFormat:@"%@ (%@%@ - %@)", edgeDescription, v6, universalStartDate, self->_universalEndDate];

  return v8;
}

- (id)propertyDictionary
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v13[0] = v3;
  v12[1] = @"routine";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRoutineInfo];
  v13[1] = v4;
  v12[2] = @"universalStartDate";
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_universalStartDate timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v13[2] = v6;
  v12[3] = @"universalEndDate";
  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_universalEndDate timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        goto LABEL_11;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"routine"];
    v7 = v9;
    if (v9)
    {
      if (self->_hasRoutineInfo != [v9 BOOLValue])
      {
        goto LABEL_11;
      }
    }

    v10 = [v5 objectForKeyedSubscript:@"universalStartDate"];
    v7 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v12 = v11;
      [(NSDate *)self->_universalStartDate timeIntervalSince1970];
      if (v12 != v13)
      {
        goto LABEL_11;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"universalEndDate"];
    v7 = v14;
    if (!v14 || ([v14 doubleValue], v16 = v15, -[NSDate timeIntervalSince1970](self->_universalEndDate, "timeIntervalSince1970"), v16 == v17))
    {
      v18 = 1;
    }

    else
    {
LABEL_11:
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)checkConsistencyOfProperties:(id)properties withExtraPropertyKeys:(id)keys
{
  v4.receiver = self;
  v4.super_class = PGGraphBusinessEdge;
  [(PGGraphOptimizedEdge *)&v4 checkConsistencyOfProperties:properties withExtraPropertyKeys:keys];
}

- (PGGraphBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v16 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v16);
}

- (id)initFromSourceNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v20.receiver = self;
  v20.super_class = PGGraphBusinessEdge;
  v17 = [(PGGraphEdge *)&v20 initWithSourceNode:node targetNode:businessNode];
  p_isa = &v17->super.super.super.super.isa;
  if (v17)
  {
    v17->_confidence = confidence;
    v17->_hasRoutineInfo = info;
    objc_storeStrong(&v17->_universalStartDate, date);
    objc_storeStrong(p_isa + 8, endDate);
  }

  return p_isa;
}

@end