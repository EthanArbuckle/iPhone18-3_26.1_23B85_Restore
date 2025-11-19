@interface OZFxPlugAPIManager
- (OZFxPlugAPIManager)init;
- (id).cxx_construct;
- (id)apiForProtocol:(id)a3;
- (void)dealloc;
- (void)registerAPIObject:(id)a3 forProtocol:(id)a4 version:(unsigned int)a5;
- (void)unregisterAPIForProtocol:(id)a3;
@end

@implementation OZFxPlugAPIManager

- (OZFxPlugAPIManager)init
{
  v5.receiver = self;
  v5.super_class = OZFxPlugAPIManager;
  v2 = [(OZFxPlugAPIManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    v2->_apis = v3;
    if (!v3)
    {
    }
  }

  return v2;
}

- (void)dealloc
{
  self->_apis = 0;
  v3.receiver = self;
  v3.super_class = OZFxPlugAPIManager;
  [(OZFxPlugAPIManager *)&v3 dealloc];
}

- (void)registerAPIObject:(id)a3 forProtocol:(id)a4 version:(unsigned int)a5
{
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:protocol_getName(a4)];
  p_mutex = &self->_mutex;
  PCMutex::lock(&self->_mutex);
  v8 = [(NSMutableDictionary *)self->_apis objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"RefCount"];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    -[NSMutableDictionary setObject:forKey:](self->_apis, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(v9, "objectForKey:", @"API Object", @"API Object", v11, @"RefCount", 0, p_mutex}], v7);
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->_apis, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"API Object", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 1), @"RefCount", 0, p_mutex}], v7);
  }

  PCMutex::unlock(&self->_mutex);
}

- (void)unregisterAPIForProtocol:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:protocol_getName(a3)];
  PCMutex::lock(&self->_mutex);
  v6 = [(NSMutableDictionary *)self->_apis objectForKey:v10];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"RefCount"];
    if ([v8 intValue] == 1)
    {
      [(NSMutableDictionary *)self->_apis removeObjectForKey:v10];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "intValue") - 1}];
      -[NSMutableDictionary setObject:forKey:](self->_apis, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(v7, "objectForKey:", @"API Object", @"API Object", v9, @"RefCount", 0}], v10);
    }
  }

  PCMutex::unlock(&self->_mutex);
}

- (id)apiForProtocol:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:protocol_getName(a3)];
  p_mutex = &self->_mutex;
  PCMutex::lock(&self->_mutex);
  LOBYTE(v8) = 1;
  v6 = [-[NSMutableDictionary objectForKey:](self->_apis objectForKey:{v4, &self->_mutex, v8), "objectForKey:", @"API Object"}];

  PCMutex::unlock(p_mutex);
  return v6;
}

- (id).cxx_construct
{
  PCMutex::PCMutex(&self->_mutex, 1);
  self->_mutex._vptr$PCMutex = &unk_2871D83A0;
  return self;
}

@end