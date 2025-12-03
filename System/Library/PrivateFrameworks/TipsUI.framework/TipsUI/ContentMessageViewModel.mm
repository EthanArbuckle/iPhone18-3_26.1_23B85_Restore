@interface ContentMessageViewModel
+ (NSURL)networkSettingsURL;
+ (int64_t)typeFor:(id)for;
- (ContentMessageViewModel)init;
- (ContentMessageViewModel)initWithContentMessageType:(int64_t)type additionalContext:(id)context;
- (ContentMessageViewModel)initWithError:(id)error defaultMessage:(id)message;
- (ContentMessageViewModel)initWithTitle:(id)title message:(id)message symbolName:(id)name;
- (ContentMessageViewModel)initWithType:(int64_t)type additionalContext:(id)context defaultMessage:(id)message;
- (NSString)settingsText;
- (NSURL)settingsURL;
- (id)debugActionHandler;
- (void)setDebugActionHandler:(id)handler;
- (void)setSettingsText:(id)text;
- (void)setSettingsURL:(id)l;
@end

@implementation ContentMessageViewModel

- (NSURL)settingsURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  swift_beginAccess();
  sub_220B57DC0(self + v6, v5);
  v7 = sub_220BCBF80();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_220BCBF20();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setSettingsURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_220BCBF30();
    v8 = sub_220BCBF80();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_220BCBF80();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  swift_beginAccess();
  selfCopy = self;
  sub_220B55518(v7, self + v10);
  swift_endAccess();
}

- (NSString)settingsText
{
  if (*(self + OBJC_IVAR___ContentMessageViewModel_settingsText + 8))
  {

    v2 = sub_220BCDB70();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSettingsText:(id)text
{
  if (text)
  {
    v4 = sub_220BCDBA0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ContentMessageViewModel_settingsText);
  *v6 = v4;
  v6[1] = v5;
}

- (id)debugActionHandler
{
  v2 = (self + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_2;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDebugActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_220B6B7E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_220B3A128(v7);
}

- (ContentMessageViewModel)initWithContentMessageType:(int64_t)type additionalContext:(id)context
{
  if (context)
  {
    context = sub_220BCDBA0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return ContentMessageViewModel.init(contentMessageType:additionalContext:)(type, context, v6);
}

- (ContentMessageViewModel)initWithType:(int64_t)type additionalContext:(id)context defaultMessage:(id)message
{
  if (!context)
  {
    v7 = 0;
    v9 = 0;
    if (message)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return ContentMessageViewModel.init(type:additionalContext:defaultMessage:)(type, v7, v9, v10, v12);
  }

  v7 = sub_220BCDBA0();
  v9 = v8;
  if (!message)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_220BCDBA0();
  v12 = v11;
  return ContentMessageViewModel.init(type:additionalContext:defaultMessage:)(type, v7, v9, v10, v12);
}

- (ContentMessageViewModel)initWithTitle:(id)title message:(id)message symbolName:(id)name
{
  v6 = sub_220BCDBA0();
  v8 = v7;
  v9 = sub_220BCDBA0();
  v11 = v10;
  v12 = sub_220BCDBA0();
  v14 = v13;
  v15 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  v16 = sub_220BCBF80();
  (*(*(v16 - 8) + 56))(self + v15, 1, 1, v16);
  v17 = (self + OBJC_IVAR___ContentMessageViewModel_settingsText);
  *v17 = 0;
  v17[1] = 0;
  v18 = (self + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  *v18 = 0;
  v18[1] = 0;
  v19 = (self + OBJC_IVAR___ContentMessageViewModel_title);
  *v19 = v6;
  v19[1] = v8;
  v20 = (self + OBJC_IVAR___ContentMessageViewModel_message);
  *v20 = v9;
  v20[1] = v11;
  v21 = (self + OBJC_IVAR___ContentMessageViewModel_symbolName);
  *v21 = v12;
  v21[1] = v14;
  v23.receiver = self;
  v23.super_class = type metadata accessor for ContentMessageViewModel();
  return [(ContentMessageViewModel *)&v23 init];
}

- (ContentMessageViewModel)initWithError:(id)error defaultMessage:(id)message
{
  if (message)
  {
    sub_220BCDBA0();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  errorCopy = error;
  v9 = _s6TipsUI23ContentMessageViewModelC4type3forAA0cD4TypeOSo7NSErrorCSg_tFZ_0(error);
  if (v7)
  {
    v10 = sub_220BCDB70();
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ContentMessageViewModel *)self initWithType:v9 additionalContext:0 defaultMessage:v10];

  return v11;
}

+ (NSURL)networkSettingsURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = objc_opt_self();
  if (![v5 isMacUI])
  {
    [v5 isWatchUI];
  }

  sub_220BCBF40();

  v6 = sub_220BCBF80();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_220BCBF20();
    (*(v7 + 8))(v4, v6);
    v9 = v10;
  }

  return v9;
}

+ (int64_t)typeFor:(id)for
{
  forCopy = for;
  v5 = _s6TipsUI23ContentMessageViewModelC4type3forAA0cD4TypeOSo7NSErrorCSg_tFZ_0(for);

  return v5;
}

- (ContentMessageViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end