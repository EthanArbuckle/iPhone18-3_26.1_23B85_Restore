@interface SHSheetCollaborationParticipantsContext
+ (id)defaultContext;
- (SHSheetCollaborationParticipantsContext)initWithHeaderTitle:(id)a3 supplementaryText:(id)a4 confirmButtonText:(id)a5 loadingText:(id)a6;
@end

@implementation SHSheetCollaborationParticipantsContext

+ (id)defaultContext
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Participants Header Text" value:@"Create Link" table:@"Localizable"];

  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"Participants Supplementary Text" value:@"Create a link by adding people who you‘d like to collaborate with" table:@"Localizable"];

  v6 = _ShareSheetBundle();
  v7 = [v6 localizedStringForKey:@"Participants Confirm Button Text" value:@"Share Link" table:@"Localizable"];

  v8 = _ShareSheetBundle();
  v9 = [v8 localizedStringForKey:@"Participants Loading Text" value:@"Creating Link" table:@"Localizable"];

  v10 = [[SHSheetCollaborationParticipantsContext alloc] initWithHeaderTitle:v3 supplementaryText:v5 confirmButtonText:v7 loadingText:v9];

  return v10;
}

- (SHSheetCollaborationParticipantsContext)initWithHeaderTitle:(id)a3 supplementaryText:(id)a4 confirmButtonText:(id)a5 loadingText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SHSheetCollaborationParticipantsContext;
  v14 = [(SHSheetCollaborationParticipantsContext *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    headerTitle = v14->_headerTitle;
    v14->_headerTitle = v15;

    v17 = [v11 copy];
    supplementaryText = v14->_supplementaryText;
    v14->_supplementaryText = v17;

    v19 = [v12 copy];
    confirmButtonText = v14->_confirmButtonText;
    v14->_confirmButtonText = v19;

    v21 = [v13 copy];
    loadingText = v14->_loadingText;
    v14->_loadingText = v21;
  }

  return v14;
}

@end