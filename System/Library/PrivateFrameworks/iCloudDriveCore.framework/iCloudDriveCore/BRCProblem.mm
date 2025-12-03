@interface BRCProblem
- (BRCProblem)initWithCoder:(id)coder;
- (BRCProblem)initWithProblem:(id)problem;
- (BRCProblem)initWithType:(int)type recordName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithProblem:(id)problem;
@end

@implementation BRCProblem

- (BRCProblem)initWithType:(int)type recordName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BRCProblem;
  v7 = [(BRCProblem *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    if (nameCopy)
    {
      [MEMORY[0x277CBEB98] setWithObject:nameCopy];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v9 = ;
    effectedRecordNames = v8->_effectedRecordNames;
    v8->_effectedRecordNames = v9;
  }

  return v8;
}

- (BRCProblem)initWithProblem:(id)problem
{
  problemCopy = problem;
  v10.receiver = self;
  v10.super_class = BRCProblem;
  v5 = [(BRCProblem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = *(problemCopy + 2);
    v7 = [*(problemCopy + 2) copy];
    effectedRecordNames = v6->_effectedRecordNames;
    v6->_effectedRecordNames = v7;
  }

  return v6;
}

- (BRCProblem)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BRCProblem;
  v5 = [(BRCProblem *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recordNames"];
    effectedRecordNames = v5->_effectedRecordNames;
    v5->_effectedRecordNames = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt32:type forKey:@"type"];
  [coderCopy encodeObject:self->_effectedRecordNames forKey:@"recordNames"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithProblem:self];
}

- (void)mergeWithProblem:(id)problem
{
  problemCopy = problem;
  if (self->_type != problemCopy[2])
  {
    [BRCProblem mergeWithProblem:];
  }

  v5 = [(NSSet *)self->_effectedRecordNames count];
  v6 = [BRCUserDefaults defaultsForMangledID:0];
  zoneHealthReportedRecordNamesCount = [v6 zoneHealthReportedRecordNamesCount];

  if (v5 < zoneHealthReportedRecordNamesCount)
  {
    v8 = [(NSSet *)self->_effectedRecordNames setByAddingObjectsFromSet:*(problemCopy + 2)];
    effectedRecordNames = self->_effectedRecordNames;
    self->_effectedRecordNames = v8;
  }
}

- (void)mergeWithProblem:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _type == problem->_type%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end