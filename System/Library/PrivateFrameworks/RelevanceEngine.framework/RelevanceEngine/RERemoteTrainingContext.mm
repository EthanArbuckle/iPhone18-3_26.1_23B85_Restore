@interface RERemoteTrainingContext
- (RERemoteTrainingContext)initWithProcessName:(id)name;
- (void)_queue_performRemoteTraining;
- (void)_queue_setRemoteAttribute:(id)attribute forKey:(id)key;
- (void)setAttribute:(id)attribute forKey:(id)key;
@end

@implementation RERemoteTrainingContext

- (RERemoteTrainingContext)initWithProcessName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = RERemoteTrainingContext;
  v5 = [(RETrainingContext *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(RETrainingContext *)v5 _configureForRelevanceEngine:0];
    array = [MEMORY[0x277CBEB18] array];
    trainingElements = v6->_trainingElements;
    v6->_trainingElements = array;

    array2 = [MEMORY[0x277CBEB18] array];
    trainingEvents = v6->_trainingEvents;
    v6->_trainingEvents = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    trainingInteractions = v6->_trainingInteractions;
    v6->_trainingInteractions = array3;

    v13 = [[RERemoteTrainingServer alloc] initWithTargetProcessName:nameCopy];
    trainingServer = v6->_trainingServer;
    v6->_trainingServer = v13;
  }

  return v6;
}

- (void)setAttribute:(id)attribute forKey:(id)key
{
  attributeCopy = attribute;
  keyCopy = key;
  v8 = [(RETrainingContext *)self attributeForKey:keyCopy];
  v9 = v8;
  if (v8 == attributeCopy)
  {
  }

  else
  {
    v10 = [attributeCopy isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(RERemoteTrainingContext *)self _willSetAttributeForRemoteTraining];
      v11.receiver = self;
      v11.super_class = RERemoteTrainingContext;
      [(RETrainingContext *)&v11 setAttribute:attributeCopy forKey:keyCopy];
      [(RERemoteTrainingContext *)self _queue_setRemoteAttribute:attributeCopy forKey:keyCopy];
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
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_trainingElements;
    self->_trainingElements = array;

    array2 = [MEMORY[0x277CBEB18] array];
    v10 = self->_trainingEvents;
    self->_trainingEvents = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    v12 = self->_trainingInteractions;
    self->_trainingInteractions = array3;

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

- (void)_queue_setRemoteAttribute:(id)attribute forKey:(id)key
{
  attributeCopy = attribute;
  keyCopy = key;
  objc_initWeak(&location, self);
  trainingServer = self->_trainingServer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__RERemoteTrainingContext__queue_setRemoteAttribute_forKey___block_invoke;
  v9[3] = &unk_2785F9A90;
  objc_copyWeak(&v10, &location);
  [(RERemoteTrainingServer *)trainingServer updateRemoteAttribute:attributeCopy forKey:keyCopy completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__RERemoteTrainingContext__queue_setRemoteAttribute_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSetAttributeForRemoteTraining];
}

@end