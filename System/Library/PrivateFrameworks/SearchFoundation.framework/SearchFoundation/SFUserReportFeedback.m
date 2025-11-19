@interface SFUserReportFeedback
- (SFUserReportFeedback)initWithCoder:(id)a3;
- (SFUserReportFeedback)initWithSelection:(id)a3 result:(id)a4 cardSection:(id)a5;
- (SFUserReportFeedback)initWithSelection:(id)a3 result:(id)a4 cardSection:(id)a5 resultSections:(id)a6 uploadedDataIdentifier:(id)a7 userReportRequestType:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUserReportFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFUserReportFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_userSelection forKey:{@"_userSelection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_result forKey:@"_result"];
  [v4 encodeObject:self->_cardSection forKey:@"_cardSection"];
}

- (SFUserReportFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFUserReportFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userSelection"];
    userSelection = v5->_userSelection;
    v5->_userSelection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v9 = v5->_result;
    v5->_result = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21.receiver = self;
  v21.super_class = SFUserReportFeedback;
  v4 = [(SFFeedback *)&v21 copyWithZone:a3];
  v5 = [(SFUserReportFeedback *)self result];
  v6 = [v5 copy];
  v7 = v4[4];
  v4[4] = v6;

  v8 = [(SFUserReportFeedback *)self userSelection];
  v9 = [v8 copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(SFUserReportFeedback *)self cardSection];
  v12 = [v11 copy];
  v13 = v4[5];
  v4[5] = v12;

  v14 = [(SFUserReportFeedback *)self sections];
  v15 = [v14 copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(SFUserReportFeedback *)self uploadedDataIdentifier];
  v18 = [v17 copy];
  v19 = v4[8];
  v4[8] = v18;

  *(v4 + 6) = [(SFUserReportFeedback *)self reportType];
  return v4;
}

- (SFUserReportFeedback)initWithSelection:(id)a3 result:(id)a4 cardSection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SFUserReportFeedback;
  v12 = [(SFFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_result, a4);
    objc_storeStrong(&v13->_userSelection, a3);
    objc_storeStrong(&v13->_cardSection, a5);
  }

  return v13;
}

- (SFUserReportFeedback)initWithSelection:(id)a3 result:(id)a4 cardSection:(id)a5 resultSections:(id)a6 uploadedDataIdentifier:(id)a7 userReportRequestType:(int)a8
{
  v15 = a6;
  v16 = a7;
  v17 = [(SFUserReportFeedback *)self initWithSelection:a3 result:a4 cardSection:a5];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sections, a6);
    objc_storeStrong(&v18->_uploadedDataIdentifier, a7);
    v18->_reportType = a8;
  }

  return v18;
}

@end