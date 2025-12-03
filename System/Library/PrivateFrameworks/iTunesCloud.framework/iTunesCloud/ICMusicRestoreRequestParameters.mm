@interface ICMusicRestoreRequestParameters
- (ICMusicRestoreRequestParameters)initWithItemID:(id)d title:(id)title storeFrontID:(id)iD mediaKind:(id)kind accountID:(id)accountID matchStatus:(id)status flavor:(id)flavor;
@end

@implementation ICMusicRestoreRequestParameters

- (ICMusicRestoreRequestParameters)initWithItemID:(id)d title:(id)title storeFrontID:(id)iD mediaKind:(id)kind accountID:(id)accountID matchStatus:(id)status flavor:(id)flavor
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  kindCopy = kind;
  accountIDCopy = accountID;
  statusCopy = status;
  flavorCopy = flavor;
  v26.receiver = self;
  v26.super_class = ICMusicRestoreRequestParameters;
  v18 = [(ICMusicRestoreRequestParameters *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_adamID, d);
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_storeFrontID, iD);
    objc_storeStrong(&v19->_mediaKind, kind);
    objc_storeStrong(&v19->_accountID, accountID);
    objc_storeStrong(&v19->_matchStatus, status);
    objc_storeStrong(&v19->_flavor, flavor);
  }

  return v19;
}

@end