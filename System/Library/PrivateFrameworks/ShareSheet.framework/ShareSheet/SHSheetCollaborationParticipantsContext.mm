@interface SHSheetCollaborationParticipantsContext
+ (id)defaultContext;
- (SHSheetCollaborationParticipantsContext)initWithHeaderTitle:(id)title supplementaryText:(id)text confirmButtonText:(id)buttonText loadingText:(id)loadingText;
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

- (SHSheetCollaborationParticipantsContext)initWithHeaderTitle:(id)title supplementaryText:(id)text confirmButtonText:(id)buttonText loadingText:(id)loadingText
{
  titleCopy = title;
  textCopy = text;
  buttonTextCopy = buttonText;
  loadingTextCopy = loadingText;
  v24.receiver = self;
  v24.super_class = SHSheetCollaborationParticipantsContext;
  v14 = [(SHSheetCollaborationParticipantsContext *)&v24 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    headerTitle = v14->_headerTitle;
    v14->_headerTitle = v15;

    v17 = [textCopy copy];
    supplementaryText = v14->_supplementaryText;
    v14->_supplementaryText = v17;

    v19 = [buttonTextCopy copy];
    confirmButtonText = v14->_confirmButtonText;
    v14->_confirmButtonText = v19;

    v21 = [loadingTextCopy copy];
    loadingText = v14->_loadingText;
    v14->_loadingText = v21;
  }

  return v14;
}

@end