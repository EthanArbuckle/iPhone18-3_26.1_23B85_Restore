@interface RBCoalition
- (BOOL)isEqual:(id)a3;
- (RBCoalition)initWithCoalitionID:(unint64_t)a3;
- (id)debugDescription;
- (void)enumerateProcessesUsingBlock:(id)a3;
- (void)removeProcess:(id)a3;
- (void)setCoalitionLevel:(unint64_t)a3;
- (void)setProcess:(id)a3 withState:(id)a4;
@end

@implementation RBCoalition

- (RBCoalition)initWithCoalitionID:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = RBCoalition;
  v4 = [(RBCoalition *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_coalitionID = a3;
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

- (void)setCoalitionLevel:(unint64_t)a3
{
  self->_previousCoalitionLevel = self->_level;
  self->_level = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastModificationTime = v4;
}

- (void)setProcess:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 identity];
  v8 = [(RBProcessMap *)self->_processes setValue:v10 forIdentity:v7];
  if (v6)
  {
    v9 = [(RBProcessMap *)self->_processStates setValue:v6 forIdentity:v7];
  }
}

- (void)removeProcess:(id)a3
{
  v6 = [a3 identity];
  v4 = [(RBProcessMap *)self->_processes removeValueForIdentity:v6];
  v5 = [(RBProcessMap *)self->_processStates removeValueForIdentity:v6];
}

- (void)enumerateProcessesUsingBlock:(id)a3
{
  v4 = a3;
  processes = self->_processes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RBCoalition_enumerateProcessesUsingBlock___block_invoke;
  v7[3] = &unk_279B33258;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(RBProcessMap *)processes enumerateWithBlock:v7];
}

void __44__RBCoalition_enumerateProcessesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 valueForIdentity:a2];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 && (v6 = objc_opt_class(), v6 == objc_opt_class()) && [(RBCoalition *)v5 coalitionID]== self->_coalitionID;
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