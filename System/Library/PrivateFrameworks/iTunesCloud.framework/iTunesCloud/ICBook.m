@interface ICBook
- (ICBook)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICBook

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(ICBook *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title='%@'>", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[ICBook purchaseHistoryID](self forKey:{"purchaseHistoryID"), @"ICPurchasedBookPurchaseHistoryID"}];
  [v4 encodeInt64:-[ICBook storeID](self forKey:{"storeID"), @"ICPurchasedBookStoreID"}];
  v5 = [(ICBook *)self title];
  [v4 encodeObject:v5 forKey:@"ICPurchasedBookTitle"];

  v6 = [(ICBook *)self author];
  [v4 encodeObject:v6 forKey:@"ICPurchasedBookAuthor"];

  v7 = [(ICBook *)self genre];
  [v4 encodeObject:v7 forKey:@"ICPurchasedBookGenre"];

  v8 = [(ICBook *)self datePurchased];
  [v4 encodeObject:v8 forKey:@"ICPurchasedBookDatePurchased"];

  v9 = [(ICBook *)self artworkURL];
  [v4 encodeObject:v9 forKey:@"ICPurchasedBookArtworkURL"];

  v10 = [(ICBook *)self redownloadParameters];
  [v4 encodeObject:v10 forKey:@"ICPurchasedBookRedownloadParameters"];

  [v4 encodeBool:-[ICBook isVPPLicensed](self forKey:{"isVPPLicensed"), @"ICPurchasedBookVPPLicensed"}];
  v11 = [(ICBook *)self vppOrganizationID];
  [v4 encodeObject:v11 forKey:@"ICPurchasedBookVPPOrganizationID"];

  v12 = [(ICBook *)self vppOrganizationDisplayName];
  [v4 encodeObject:v12 forKey:@"ICPurchasedBookVPPOrganizationDisplayName"];
}

- (ICBook)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICBook;
  v5 = [(ICBook *)&v15 init];
  if (v5)
  {
    -[ICBook setPurchaseHistoryID:](v5, "setPurchaseHistoryID:", [v4 decodeInt64ForKey:@"ICPurchasedBookPurchaseHistoryID"]);
    -[ICBook setStoreID:](v5, "setStoreID:", [v4 decodeInt64ForKey:@"ICPurchasedBookStoreID"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookTitle"];
    [(ICBook *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookAuthor"];
    [(ICBook *)v5 setAuthor:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookGenre"];
    [(ICBook *)v5 setGenre:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookDatePurchased"];
    [(ICBook *)v5 setDatePurchased:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookArtworkURL"];
    [(ICBook *)v5 setArtworkURL:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookRedownloadParameters"];
    [(ICBook *)v5 setRedownloadParameters:v11];

    -[ICBook setVppLicensed:](v5, "setVppLicensed:", [v4 decodeBoolForKey:@"ICPurchasedBookVPPLicensed"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookVPPOrganizationID"];
    [(ICBook *)v5 setVppOrganizationID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPurchasedBookVPPOrganizationDisplayName"];
    [(ICBook *)v5 setVppOrganizationDisplayName:v13];
  }

  return v5;
}

@end