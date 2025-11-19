@interface _PMPasswordAutoFillPocketViewController
- (_ASPasswordManagerIconController)iconController;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithCoder:(id)a3;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 savedAccountStore:(id)a10 suggestedDomainForNewAccount:(id)a11 localizedHostAppNameForNewAccount:(id)a12 bundleIDForFallbackIconForNewAccount:(id)a13 autoFillQuirksManager:(id)a14 shouldShowAutoFillPasskeys:(BOOL)a15 currentWebFrameIdentifierForAutoFillPasskeys:(id)a16 connectedAppAuditToken:(id *)a17 isConnectedAppAWebBrowser:(BOOL)a18 initialSearchQuery:(id)a19 savedAccountToInitiallyShowDetailsFor:(id)a20 shouldAllowAddingNewPasswords:(BOOL)a21 bypassLockoutPolicy:(BOOL)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 didSelectAccountHandler:(id)a25 didSelectTextToInsertHandler:(id)a26;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 savedAccountStore:(id)a10 suggestedDomainForNewAccount:(id)a11 localizedHostAppNameForNewAccount:(id)a12 bundleIDForFallbackIconForNewAccount:(id)a13 autoFillQuirksManager:(id)a14 shouldShowAutoFillPasskeys:(BOOL)a15 currentWebFrameIdentifierForAutoFillPasskeys:(id)a16 connectedAppAuditToken:(id *)a17 isConnectedAppAWebBrowser:(BOOL)a18 initialSearchQuery:(id)a19 savedAccountToInitiallyShowDetailsFor:(id)a20 shouldAllowAddingNewPasswords:(BOOL)a21 bypassLockoutPolicy:(BOOL)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 savedAccountForHistorySection:(id)a25 didSelectHistoryItem:(id)aBlock didSelectAccountHandler:(id)a27 didSelectTextToInsertHandler:(id)a28;
- (id)searchQuery;
- (void)loadView;
- (void)setAuthenticatedContext:(id)a3;
- (void)setSearchQuery:(id)a3;
- (void)updateHintStringsWithServiceNameHintStrings:(id)a3 domainNameHintStrings:(id)a4 suggestedDomainForNewAccount:(id)a5;
@end

@implementation _PMPasswordAutoFillPocketViewController

- (_ASPasswordManagerIconController)iconController
{
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_21C95C78C();

  return v2;
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 savedAccountStore:(id)a10 suggestedDomainForNewAccount:(id)a11 localizedHostAppNameForNewAccount:(id)a12 bundleIDForFallbackIconForNewAccount:(id)a13 autoFillQuirksManager:(id)a14 shouldShowAutoFillPasskeys:(BOOL)a15 currentWebFrameIdentifierForAutoFillPasskeys:(id)a16 connectedAppAuditToken:(id *)a17 isConnectedAppAWebBrowser:(BOOL)a18 initialSearchQuery:(id)a19 savedAccountToInitiallyShowDetailsFor:(id)a20 shouldAllowAddingNewPasswords:(BOOL)a21 bypassLockoutPolicy:(BOOL)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 didSelectAccountHandler:(id)a25 didSelectTextToInsertHandler:(id)a26
{
  v75 = *&a17->var0[2];
  v76 = *a17->var0;
  v71 = *&a17->var0[6];
  v72 = *&a17->var0[4];
  v67 = _Block_copy(a25);
  v68 = _Block_copy(a26);
  v28 = sub_21CB855C4();
  v73 = v29;
  v74 = v28;
  if (a6)
  {
    v30 = sub_21CB855C4();
    v69 = v31;
    v70 = v30;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  if (a7)
  {
    v32 = sub_21CB855C4();
    v65 = v33;
    v66 = v32;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v64 = sub_21CB85824();
  v63 = sub_21CB85824();
  if (a11)
  {
    v34 = sub_21CB855C4();
    v60 = v35;
    v61 = v34;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v62 = a10;
  v36 = a12;
  v37 = a13;
  v59 = a14;
  v58 = a16;
  v38 = a19;
  v57 = a20;
  v39 = a23;
  v40 = a24;
  if (v36)
  {
    v41 = sub_21CB855C4();
    v55 = v42;
    v56 = v41;

    if (v37)
    {
LABEL_12:
      v43 = sub_21CB855C4();
      v53 = v44;
      v54 = v43;

      goto LABEL_15;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    if (v37)
    {
      goto LABEL_12;
    }
  }

  v53 = 0;
  v54 = 0;
LABEL_15:
  if (v38)
  {
    v45 = sub_21CB855C4();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v67;
  v49 = swift_allocObject();
  *(v49 + 16) = v68;
  *(&v52 + 1) = v60;
  *&v52 = v61;
  v50 = sub_21CB0165C(a3, v74, v73, a5, v70, v69, v66, v65, v64, v63, v62, v52, v56, v55, v54, v53, v59, a15, v58, v76, v75, v72, v71, a18, v45, v47, v57, a21, a22, v39, v40, sub_21CB03008, v48, sub_21CB03004, v49);

  return v50;
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 savedAccountStore:(id)a10 suggestedDomainForNewAccount:(id)a11 localizedHostAppNameForNewAccount:(id)a12 bundleIDForFallbackIconForNewAccount:(id)a13 autoFillQuirksManager:(id)a14 shouldShowAutoFillPasskeys:(BOOL)a15 currentWebFrameIdentifierForAutoFillPasskeys:(id)a16 connectedAppAuditToken:(id *)a17 isConnectedAppAWebBrowser:(BOOL)a18 initialSearchQuery:(id)a19 savedAccountToInitiallyShowDetailsFor:(id)a20 shouldAllowAddingNewPasswords:(BOOL)a21 bypassLockoutPolicy:(BOOL)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 savedAccountForHistorySection:(id)a25 didSelectHistoryItem:(id)aBlock didSelectAccountHandler:(id)a27 didSelectTextToInsertHandler:(id)a28
{
  v75 = *&a17->var0[2];
  v76 = *a17->var0;
  v73 = *&a17->var0[6];
  v74 = *&a17->var0[4];
  v64 = _Block_copy(aBlock);
  v66 = _Block_copy(a27);
  v68 = _Block_copy(a28);
  v30 = sub_21CB855C4();
  v71 = v31;
  v72 = v30;
  if (a6)
  {
    v32 = sub_21CB855C4();
    v69 = v33;
    v70 = v32;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  if (a7)
  {
    v67 = sub_21CB855C4();
    v65 = v34;
  }

  else
  {
    v67 = 0;
    v65 = 0;
  }

  v63 = sub_21CB85824();
  v62 = sub_21CB85824();
  if (a11)
  {
    v35 = sub_21CB855C4();
    v60 = v36;
    v61 = v35;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v59 = a10;
  v37 = a12;
  v38 = a13;
  v58 = a14;
  v57 = a16;
  v39 = a19;
  v56 = a20;
  v55 = a23;
  v53 = a24;
  v51 = a25;
  if (v37)
  {
    v54 = sub_21CB855C4();
    v52 = v40;

    if (v38)
    {
LABEL_12:
      v41 = sub_21CB855C4();
      v43 = v42;

      goto LABEL_15;
    }
  }

  else
  {
    v54 = 0;
    v52 = 0;
    if (v38)
    {
      goto LABEL_12;
    }
  }

  v41 = 0;
  v43 = 0;
LABEL_15:
  if (v39)
  {
    v44 = sub_21CB855C4();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = swift_allocObject();
  *(v47 + 16) = v64;
  v48 = swift_allocObject();
  *(v48 + 16) = v66;
  v49 = swift_allocObject();
  *(v49 + 16) = v68;
  return _PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(a3, v72, v71, a5, v70, v69, v67, v65, v63, v62, v59, v61, v60, v54, v52, v41, v43, v58, a15, v57, v76, HIDWORD(v76), v75, HIDWORD(v75), v74, HIDWORD(v74), v73, HIDWORD(v73), a18, v44, v46, v56, a21, a22, v55, v53, v51, sub_21CB02D88, v47, sub_21CB02D90, v48, sub_21CB02DA4, v49);
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v5 = type metadata accessor for PMAccount(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem);
  *v6 = 0;
  v6[1] = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_21CAFFD7C();
}

- (void)setAuthenticatedContext:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  v4 = *(v3 + 352);
  *(v3 + 352) = a3;
}

- (id)searchQuery
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;

  sub_21CB81DB4();

  v5 = sub_21CB85584();

  return v5;
}

- (void)setSearchQuery:(id)a3
{
  v4 = sub_21CB855C4();
  v6 = v5;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  v8 = self;

  sub_21C7A6110(v4, v6);
}

- (void)updateHintStringsWithServiceNameHintStrings:(id)a3 domainNameHintStrings:(id)a4 suggestedDomainForNewAccount:(id)a5
{
  v7 = sub_21CB85824();
  v8 = sub_21CB85824();
  if (a5)
  {
    v9 = sub_21CB855C4();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  sub_21CB00354(v7, v8, v9, a5);
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end