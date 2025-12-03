@interface _LTPowerLogger
+ (id)sharedInstance;
- (_LTPowerLogger)init;
- (id)_maskForRequestType:(id)type;
- (void)logTranslateRequestEvent:(id)event requestType:(id)type routeType:(int64_t)routeType;
@end

@implementation _LTPowerLogger

- (_LTPowerLogger)init
{
  v9.receiver = self;
  v9.super_class = _LTPowerLogger;
  v2 = [(_LTPowerLogger *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translation.powerlog", 0);
    loggerQueue = v2->_loggerQueue;
    v2->_loggerQueue = v3;

    v5 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{@"sentence", @"singleParagraph", @"paragraphs", @"tts", @"text-to-speech", @"speech", @"preheat", @"text-LID", 0}];
    requestTypeSet = v2->_requestTypeSet;
    v2->_requestTypeSet = v5;

    v7 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_LTPowerLogger sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)logTranslateRequestEvent:(id)event requestType:(id)type routeType:(int64_t)routeType
{
  eventCopy = event;
  typeCopy = type;
  if ([(_LTPowerLogger *)self _shouldLogRequest:routeType])
  {
    loggerQueue = self->_loggerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65___LTPowerLogger_logTranslateRequestEvent_requestType_routeType___block_invoke;
    block[3] = &unk_2789B5968;
    v12 = eventCopy;
    selfCopy = self;
    v14 = typeCopy;
    dispatch_async(loggerQueue, block);
  }
}

- (id)_maskForRequestType:(id)type
{
  v3 = [(NSOrderedSet *)self->_requestTypeSet indexOfObject:type];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &unk_284868128;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  }

  return v4;
}

@end