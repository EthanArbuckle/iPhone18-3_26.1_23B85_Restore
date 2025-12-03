@interface SBHIconImageCacheResult
- (SBHIconImageCacheResult)init;
- (SBHIconImageCacheResult)initWithRequestIdentifier:(id)identifier;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
- (void)calculateElapsedTime;
@end

@implementation SBHIconImageCacheResult

- (SBHIconImageCacheResult)initWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBHIconImageCacheResult;
  v5 = [(SBHIconImageCacheResult *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;

    v5->_startTime = mach_continuous_time();
  }

  return v5;
}

- (SBHIconImageCacheResult)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [(SBHIconImageCacheResult *)self initWithRequestIdentifier:v3];

  return v4;
}

- (void)calculateElapsedTime
{
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  self->_elapsedTime = v3;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SBHIconImageCacheResult_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

id __53__SBHIconImageCacheResult_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) requestIdentifier];
  v4 = [v2 appendObject:v3 withName:@"requestIdentifier"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFinished"), @"isFinished"}];
  v6 = *(a1 + 32);
  [*(a1 + 40) elapsedTime];
  return [v6 appendFloat:@"elapsedTime" withName:?];
}

@end