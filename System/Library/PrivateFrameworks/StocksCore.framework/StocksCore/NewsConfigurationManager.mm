@interface NewsConfigurationManager
- (_TtC10StocksCore24NewsConfigurationManager)init;
- (id)possiblyUnfetchedAppConfiguration;
- (id)segmentSetIDs;
- (void)addObserver:(id)observer;
- (void)fetchAppConfigurationIfNeededWithCompletion:(id)completion;
- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (void)fetchConfigurationIfNeededWithCompletion:(id)completion;
- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation NewsConfigurationManager

- (id)possiblyUnfetchedAppConfiguration
{
  selfCopy = self;
  v2 = sub_1DAA4E530();

  return v2;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) addObject_];
  }
}

- (void)fetchConfigurationIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1DAA54238;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = self;
  selfCopy = self;
  sub_1DAA4F924(v4);
  sub_1DACB8C14();

  sub_1DAA4F910(v4);
}

- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1DAA5421C;
  }

  else
  {
    v7 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  sub_1DAA63738(queue, v6, v7);
  sub_1DAA4F910(v6);
}

- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1DAA54238;
  }

  else
  {
    v7 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  sub_1DAA90720(queueCopy, v6, v7);
  sub_1DAA4F910(v6);
}

- (id)segmentSetIDs
{
  sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
  v0 = sub_1DACB9634();

  return v0;
}

- (_TtC10StocksCore24NewsConfigurationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) removeObject_];
  }
}

- (void)fetchAppConfigurationIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1DAA54238;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = self;
  selfCopy = self;
  sub_1DAA4F924(v4);
  sub_1DACB8C14();

  sub_1DAA4F910(v4);
}

- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)queue refreshCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1DAA54238;
  }

  else
  {
    v7 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  sub_1DAB344E4(queueCopy, v6, v7);
  sub_1DAA4F910(v6);
}

@end