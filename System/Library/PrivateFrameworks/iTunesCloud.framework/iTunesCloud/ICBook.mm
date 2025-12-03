@interface ICBook
- (ICBook)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICBook

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(ICBook *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title='%@'>", v4, self, title];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[ICBook purchaseHistoryID](self forKey:{"purchaseHistoryID"), @"ICPurchasedBookPurchaseHistoryID"}];
  [coderCopy encodeInt64:-[ICBook storeID](self forKey:{"storeID"), @"ICPurchasedBookStoreID"}];
  title = [(ICBook *)self title];
  [coderCopy encodeObject:title forKey:@"ICPurchasedBookTitle"];

  author = [(ICBook *)self author];
  [coderCopy encodeObject:author forKey:@"ICPurchasedBookAuthor"];

  genre = [(ICBook *)self genre];
  [coderCopy encodeObject:genre forKey:@"ICPurchasedBookGenre"];

  datePurchased = [(ICBook *)self datePurchased];
  [coderCopy encodeObject:datePurchased forKey:@"ICPurchasedBookDatePurchased"];

  artworkURL = [(ICBook *)self artworkURL];
  [coderCopy encodeObject:artworkURL forKey:@"ICPurchasedBookArtworkURL"];

  redownloadParameters = [(ICBook *)self redownloadParameters];
  [coderCopy encodeObject:redownloadParameters forKey:@"ICPurchasedBookRedownloadParameters"];

  [coderCopy encodeBool:-[ICBook isVPPLicensed](self forKey:{"isVPPLicensed"), @"ICPurchasedBookVPPLicensed"}];
  vppOrganizationID = [(ICBook *)self vppOrganizationID];
  [coderCopy encodeObject:vppOrganizationID forKey:@"ICPurchasedBookVPPOrganizationID"];

  vppOrganizationDisplayName = [(ICBook *)self vppOrganizationDisplayName];
  [coderCopy encodeObject:vppOrganizationDisplayName forKey:@"ICPurchasedBookVPPOrganizationDisplayName"];
}

- (ICBook)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICBook;
  v5 = [(ICBook *)&v15 init];
  if (v5)
  {
    -[ICBook setPurchaseHistoryID:](v5, "setPurchaseHistoryID:", [coderCopy decodeInt64ForKey:@"ICPurchasedBookPurchaseHistoryID"]);
    -[ICBook setStoreID:](v5, "setStoreID:", [coderCopy decodeInt64ForKey:@"ICPurchasedBookStoreID"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookTitle"];
    [(ICBook *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookAuthor"];
    [(ICBook *)v5 setAuthor:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookGenre"];
    [(ICBook *)v5 setGenre:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookDatePurchased"];
    [(ICBook *)v5 setDatePurchased:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookArtworkURL"];
    [(ICBook *)v5 setArtworkURL:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookRedownloadParameters"];
    [(ICBook *)v5 setRedownloadParameters:v11];

    -[ICBook setVppLicensed:](v5, "setVppLicensed:", [coderCopy decodeBoolForKey:@"ICPurchasedBookVPPLicensed"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookVPPOrganizationID"];
    [(ICBook *)v5 setVppOrganizationID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookVPPOrganizationDisplayName"];
    [(ICBook *)v5 setVppOrganizationDisplayName:v13];
  }

  return v5;
}

@end