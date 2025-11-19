@interface DataSource
+ (NSString)bundleIdentifier;
- (NSArray)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
- (void)pause;
- (void)resume;
@end

@implementation DataSource

+ (NSString)bundleIdentifier
{
  v2 = sub_903C();
  v3 = *v2;
  v4 = *(v2 + 1);

  v5 = sub_99CC();

  return v5;
}

- (NSArray)supportedSections
{
  sub_1FE4(&qword_109F0, qword_AB20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_A940;
  *(v2 + 32) = sub_99DC();
  *(v2 + 40) = v3;
  v4.super.isa = sub_9A4C().super.isa;

  return v4.super.isa;
}

- (void)pause
{
  v2 = self;
  sub_35F8("Mindfulness pause requested.", &unk_C7B8, sub_7D6C, &unk_C7D0);
}

- (void)resume
{
  v2 = self;
  sub_35F8("Mindfulness resume requested.", &unk_C808, sub_7DE4, &unk_C820);
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_99DC();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1FDC;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  sub_3A64(v6, v8, v5, v9);
  sub_1D64(v5);
}

@end