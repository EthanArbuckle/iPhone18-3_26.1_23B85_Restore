@interface PASUIAppleIDAuthContextProvider
- (_TtC23ProximityAppleIDSetupUI31PASUIAppleIDAuthContextProvider)init;
- (id)remoteUIStyle;
- (void)contextDidDismissLoginAlertController:(id)a3;
- (void)contextDidEndPresentingSecondaryUI:(id)a3;
- (void)contextDidPresentLoginAlertController:(id)a3;
- (void)contextWillBeginPresentingSecondaryUI:(id)a3;
- (void)contextWillDismissLoginAlertController:(id)a3;
- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)a3 withCompletion:(id)a4;
- (void)willPresentModalNavigationController:(id)a3;
@end

@implementation PASUIAppleIDAuthContextProvider

- (_TtC23ProximityAppleIDSetupUI31PASUIAppleIDAuthContextProvider)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC23ProximityAppleIDSetupUI31PASUIAppleIDAuthContextProvider_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PASUIAppleIDAuthContextProvider *)&v5 init];
}

- (void)contextDidPresentLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider contextDidPresentLoginAlertController", MEMORY[0x277D43538]);
}

- (void)contextWillDismissLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider contextWillDismissLoginAlertController", MEMORY[0x277D43540]);
}

- (void)contextDidDismissLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider contextDidDismissLoginAlertController", MEMORY[0x277D43530]);
}

- (void)contextWillBeginPresentingSecondaryUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider contextWillBeginPresentingSecondaryUI", MEMORY[0x277D43558]);
}

- (void)contextDidEndPresentingSecondaryUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider contextDidEndPresentingSecondaryUI", MEMORY[0x277D43550]);
}

- (id)remoteUIStyle
{
  v2 = sub_261136378();

  return v2;
}

- (void)willPresentModalNavigationController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611364B0("PASUIAppleIDAuthContextProvider willPresentModalNavigationController", MEMORY[0x277D43548]);
}

- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_26115B7D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_261160320;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26115E1A8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_26113F5EC(0, 0, v10, &unk_26115E1B0, v15);
}

@end