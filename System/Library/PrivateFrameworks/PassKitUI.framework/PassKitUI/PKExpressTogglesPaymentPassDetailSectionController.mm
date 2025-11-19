@interface PKExpressTogglesPaymentPassDetailSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (PKExpressTogglesPaymentPassDetailSectionController)initWithPass:(id)a3 viewStyle:(int64_t)a4 expressPassController:(id)a5 delegate:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)dealloc;
- (void)expressPassDidChange;
- (void)nfcExpressAccessSwitchChanged:(id)a3;
- (void)preflight:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)uwbExpressAccessSwitchChanged:(id)a3;
@end

@implementation PKExpressTogglesPaymentPassDetailSectionController

- (PKExpressTogglesPaymentPassDetailSectionController)initWithPass:(id)a3 viewStyle:(int64_t)a4 expressPassController:(id)a5 delegate:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = sub_1BD84BDF0(v9, a4, v10);

  return v12;
}

- (void)dealloc
{
  v3 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = v5;
  v6.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  [(PKExpressTogglesPaymentPassDetailSectionController *)&v6 dealloc];
}

- (void)expressPassDidChange
{
  v2 = self;
  sub_1BD845DA8();
}

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  v2 = self;
  sub_1BD846650();

  v3 = sub_1BE052724();

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  v4 = sub_1BD84BFB0(v3);

  return v4 & 1;
}

- (void)preflight:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1BD846708(sub_1BD166E88, v5);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v12 = a3;
  v13 = self;
  result = sub_1BE04B3F4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(&v13->super.super.isa + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes);
  if (result >= *(v15 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v16 = *(result + v15 + 32);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1BD847720(v12);
    }

    else
    {
      v17 = sub_1BD847C70(v12);
    }
  }

  else
  {
    v17 = sub_1BD846FA4(v12);
  }

  v18 = v17;

  (*(v8 + 8))(v11, v7);

  return v18;
}

- (void)nfcExpressAccessSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD847618(v4);
}

- (void)uwbExpressAccessSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD8485B4(1, v4);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v12 = a3;
  v13 = self;
  sub_1BD84C678(v12);

  (*(v8 + 8))(v11, v7);
}

@end