@interface WFRunnerConnection
- (WFRunnerConnection)initWithRunDescriptor:(id)a3 host:(id)a4 onInterruption:(id)a5 onInvalidation:(id)a6 languageIdentifier:(id)a7;
- (void)invalidate;
- (void)setOnInterruption:(id)a3;
- (void)setOnInvalidation:(id)a3;
@end

@implementation WFRunnerConnection

- (void)setOnInterruption:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  RunnerConnection.onInterruption.setter(v4, v5);
}

- (void)setOnInvalidation:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  RunnerConnection.onInvalidation.setter(v4, v5);
}

- (void)invalidate
{
  v2 = self;
  RunnerConnection.invalidate()();
}

- (WFRunnerConnection)initWithRunDescriptor:(id)a3 host:(id)a4 onInterruption:(id)a5 onInvalidation:(id)a6 languageIdentifier:(id)a7
{
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  if (a7)
  {
    a7 = sub_1B1F1A890();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  swift_unknownObjectRetain();
  return RunnerConnection.init(runDescriptor:host:onInterruption:onInvalidation:languageIdentifier:)(a3, a4, sub_1B1E077B8, v13, sub_1B1E0791C, v14, a7, v16);
}

@end