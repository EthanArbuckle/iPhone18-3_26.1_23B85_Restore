@interface NewsConfigurationManager
- (_TtC10StocksCore24NewsConfigurationManager)init;
- (id)possiblyUnfetchedAppConfiguration;
- (id)segmentSetIDs;
- (void)addObserver:(id)a3;
- (void)fetchAppConfigurationIfNeededWithCompletion:(id)a3;
- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)fetchConfigurationIfNeededWithCompletion:(id)a3;
- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)a3 refreshCompletion:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation NewsConfigurationManager

- (id)possiblyUnfetchedAppConfiguration
{
  v1 = a1;
  v2 = sub_1DAA4E530();

  return v2;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) addObject_];
  }
}

- (void)fetchConfigurationIfNeededWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v7 = self;
  sub_1DAA4F924(v4);
  sub_1DACB8C14();

  sub_1DAA4F910(v4);
}

- (void)fetchConfigurationIfNeededWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1DAA63738(a3, v6, v7);
  sub_1DAA4F910(v6);
}

- (void)fetchAppConfigurationIfNeededWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1DAA90720(v8, v6, v7);
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

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) removeObject_];
  }
}

- (void)fetchAppConfigurationIfNeededWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v7 = self;
  sub_1DAA4F924(v4);
  sub_1DACB8C14();

  sub_1DAA4F910(v4);
}

- (void)refreshAppConfigurationIfNeededWithCompletionQueue:(id)a3 refreshCompletion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1DAB344E4(v8, v6, v7);
  sub_1DAA4F910(v6);
}

@end