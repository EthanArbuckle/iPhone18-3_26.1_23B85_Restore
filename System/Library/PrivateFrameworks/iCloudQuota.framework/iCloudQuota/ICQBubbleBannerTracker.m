@interface ICQBubbleBannerTracker
+ (ICQBubbleBannerTracker)shared;
- (BOOL)account:(id)a3 shouldDisplay:(id)a4 forReason:(id)a5 dismissedInSession:(BOOL)a6 supressUntil:(double)a7;
- (ICQBubbleBannerTracker)init;
- (id)account:(id)a3 lastUpdated:(id)a4 decayUntil:(double)a5;
@end

@implementation ICQBubbleBannerTracker

+ (ICQBubbleBannerTracker)shared
{
  if (qword_280C85110 != -1)
  {
    swift_once();
  }

  v3 = qword_280C85118;

  return v3;
}

- (BOOL)account:(id)a3 shouldDisplay:(id)a4 forReason:(id)a5 dismissedInSession:(BOOL)a6 supressUntil:(double)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  if (a4)
  {
    sub_2755EC5EC();
    v16 = sub_2755EC61C();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_2755EC61C();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = sub_2755EC98C();
  v20 = v19;
  v21 = a3;
  v22 = self;
  v24 = sub_2755D17C8(v21, a7, v23, v18, v20, a6);

  sub_2755D4B88(v15);
  return v24 & 1;
}

- (id)account:(id)a3 lastUpdated:(id)a4 decayUntil:(double)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_2755EC98C();
  v14 = v13;
  v15 = a3;
  v16 = self;
  sub_2755D2CE4(v15, v12, v14, v11, a5);

  v17 = sub_2755EC61C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v11, 1, v17);
  v20 = 0;
  if (v19 != 1)
  {
    v21 = sub_2755EC5CC();
    (*(v18 + 8))(v11, v17);
    v20 = v21;
  }

  return v20;
}

- (ICQBubbleBannerTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end