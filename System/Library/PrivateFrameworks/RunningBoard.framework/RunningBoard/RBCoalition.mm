@interface RBCoalition
- (BOOL)isEqual:(id)equal;
- (RBCoalition)initWithCoalitionID:(unint64_t)d;
- (id)debugDescription;
- (void)enumerateProcessesUsingBlock:(id)block;
- (void)removeProcess:(id)process;
- (void)setCoalitionLevel:(unint64_t)level;
- (void)setProcess:(id)process withState:(id)state;
@end

@implementation RBCoalition

- (RBCoalition)initWithCoalitionID:(unint64_t)d
{
  v12.receiver = self;
  v12.super_class = RBCoalition;
  v4 = [(RBCoalition *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_coalitionID = d;
    v4->_level = 0;
    v6 = objc_alloc_init(RBProcessMap);
    processes = v5->_processes;
    v5->_processes = v6;

    v8 = objc_alloc_init(RBProcessMap);
    processStates = v5->_processStates;
    v5->_processStates = v8;

    v5->_previousCoalitionLevel = 0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5->_creationTime = v10;
    v5->_lastModificationTime = v10;
  }

  return v5;
}

- (void)setCoalitionLevel:(unint64_t)level
{
  self->_previousCoalitionLevel = self->_level;
  self->_level = level;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastModificationTime = v4;
}

- (void)setProcess:(id)process withState:(id)state
{
  processCopy = process;
  stateCopy = state;
  identity = [processCopy identity];
  v8 = [(RBProcessMap *)self->_processes setValue:processCopy forIdentity:identity];
  if (stateCopy)
  {
    v9 = [(RBProcessMap *)self->_processStates setValue:stateCopy forIdentity:identity];
  }
}

- (void)removeProcess:(id)process
{
  identity = [process identity];
  v4 = [(RBProcessMap *)self->_processes removeValueForIdentity:identity];
  v5 = [(RBProcessMap *)self->_processStates removeValueForIdentity:identity];
}

- (void)enumerateProcessesUsingBlock:(id)block
{
  blockCopy = block;
  processes = self->_processes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RBCoalition_enumerateProcessesUsingBlock___block_invoke;
  v7[3] = &unk_279B33258;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(RBProcessMap *)processes enumerateWithBlock:v7];
}

void __44__RBCoalition_enumerateProcessesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 valueForIdentity:a2];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()) && [(RBCoalition *)v5 coalitionID]== self->_coalitionID;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  level = self->_level;
  v6 = [v3 initWithFormat:@"<%@| coalitionID:%llu coalitionLevel:%llu previousCoalitionLevel:%llu creationTime:%f lastModificationTime:%f>", v4, self->_coalitionID, level, self->_previousCoalitionLevel, *&self->_creationTime, *&self->_lastModificationTime];

  return v6;
}

@end