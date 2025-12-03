@interface WFRunnerConnection
- (WFRunnerConnection)initWithRunDescriptor:(id)descriptor host:(id)host onInterruption:(id)interruption onInvalidation:(id)invalidation languageIdentifier:(id)identifier;
- (void)invalidate;
- (void)setOnInterruption:(id)interruption;
- (void)setOnInvalidation:(id)invalidation;
@end

@implementation WFRunnerConnection

- (void)setOnInterruption:(id)interruption
{
  v4 = _Block_copy(interruption);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1E0791C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  RunnerConnection.onInterruption.setter(v4, v5);
}

- (void)setOnInvalidation:(id)invalidation
{
  v4 = _Block_copy(invalidation);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1E0791C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  RunnerConnection.onInvalidation.setter(v4, v5);
}

- (void)invalidate
{
  selfCopy = self;
  RunnerConnection.invalidate()();
}

- (WFRunnerConnection)initWithRunDescriptor:(id)descriptor host:(id)host onInterruption:(id)interruption onInvalidation:(id)invalidation languageIdentifier:(id)identifier
{
  v11 = _Block_copy(interruption);
  v12 = _Block_copy(invalidation);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  if (identifier)
  {
    identifier = sub_1B1F1A890();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  descriptorCopy = descriptor;
  swift_unknownObjectRetain();
  return RunnerConnection.init(runDescriptor:host:onInterruption:onInvalidation:languageIdentifier:)(descriptor, host, sub_1B1E077B8, v13, sub_1B1E0791C, v14, identifier, v16);
}

@end