@interface RERemoteTrainingContext
- (RERemoteTrainingContext)initWithProcessName:(id)a3;
- (void)_queue_performRemoteTraining;
- (void)_queue_setRemoteAttribute:(id)a3 forKey:(id)a4;
- (void)setAttribute:(id)a3 forKey:(id)a4;
@end

@implementation RERemoteTrainingContext

- (RERemoteTrainingContext)initWithProcessName:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RERemoteTrainingContext;
  v5 = [(RETrainingContext *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(RETrainingContext *)v5 _configureForRelevanceEngine:0];
    v7 = [MEMORY[0x277CBEB18] array];
    trainingElements = v6->_trainingElements;
    v6->_trainingElements = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    trainingEvents = v6->_trainingEvents;
    v6->_trainingEvents = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    trainingInteractions = v6->_trainingInteractions;
    v6->_trainingInteractions = v11;

    v13 = [[RERemoteTrainingServer alloc] initWithTargetProcessName:v4];
    trainingServer = v6->_trainingServer;
    v6->_trainingServer = v13;
  }

  return v6;
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RETrainingContext *)self attributeForKey:v7];
  v9 = v8;
  if (v8 == v6)
  {
  }

  else
  {
    v10 = [v6 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(RERemoteTrainingContext *)self _willSetAttributeForRemoteTraining];
      v11.receiver = self;
      v11.super_class = RERemoteTrainingContext;
      [(RETrainingContext *)&v11 setAttribute:v6 forKey:v7];
      [(RERemoteTrainingContext *)self _queue_setRemoteAttribute:v6 forKey:v7];
    }
  }
}

- (void)_queue_performRemoteTraining
{
  [(RERemoteTrainingContext *)self _willPerformRemoteTraining];
  if ([(NSMutableArray *)self->_trainingElements count])
  {
    objc_initWeak(&location, self);
    trainingServer = self->_trainingServer;
    trainingElements = self->_trainingElements;
    trainingEvents = self->_trainingEvents;
    trainingInteractions = self->_trainingInteractions;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __55__RERemoteTrainingContext__queue_performRemoteTraining__block_invoke;
    v16 = &unk_2785F9A90;
    objc_copyWeak(&v17, &location);
    [(RERemoteTrainingServer *)trainingServer performTrainingWithElements:trainingElements events:trainingEvents interactions:trainingInteractions completion:&v13];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_trainingElements;
    self->_trainingElements = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    v10 = self->_trainingEvents;
    self->_trainingEvents = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    v12 = self->_trainingInteractions;
    self->_trainingInteractions = v11;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {

    [(RERemoteTrainingContext *)self _didPerformRemoteTraining];
  }
}

void __55__RERemoteTrainingContext__queue_performRemoteTraining__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPerformRemoteTraining];
}

- (void)_queue_setRemoteAttribute:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  trainingServer = self->_trainingServer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__RERemoteTrainingContext__queue_setRemoteAttribute_forKey___block_invoke;
  v9[3] = &unk_2785F9A90;
  objc_copyWeak(&v10, &location);
  [(RERemoteTrainingServer *)trainingServer updateRemoteAttribute:v6 forKey:v7 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__RERemoteTrainingContext__queue_setRemoteAttribute_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSetAttributeForRemoteTraining];
}

@end