@interface SFUserReportFeedback
- (SFUserReportFeedback)initWithCoder:(id)coder;
- (SFUserReportFeedback)initWithSelection:(id)selection result:(id)result cardSection:(id)section;
- (SFUserReportFeedback)initWithSelection:(id)selection result:(id)result cardSection:(id)section resultSections:(id)sections uploadedDataIdentifier:(id)identifier userReportRequestType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUserReportFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFUserReportFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_userSelection forKey:{@"_userSelection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_result forKey:@"_result"];
  [coderCopy encodeObject:self->_cardSection forKey:@"_cardSection"];
}

- (SFUserReportFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFUserReportFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userSelection"];
    userSelection = v5->_userSelection;
    v5->_userSelection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v9 = v5->_result;
    v5->_result = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cardSection"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = SFUserReportFeedback;
  v4 = [(SFFeedback *)&v21 copyWithZone:zone];
  result = [(SFUserReportFeedback *)self result];
  v6 = [result copy];
  v7 = v4[4];
  v4[4] = v6;

  userSelection = [(SFUserReportFeedback *)self userSelection];
  v9 = [userSelection copy];
  v10 = v4[6];
  v4[6] = v9;

  cardSection = [(SFUserReportFeedback *)self cardSection];
  v12 = [cardSection copy];
  v13 = v4[5];
  v4[5] = v12;

  sections = [(SFUserReportFeedback *)self sections];
  v15 = [sections copy];
  v16 = v4[7];
  v4[7] = v15;

  uploadedDataIdentifier = [(SFUserReportFeedback *)self uploadedDataIdentifier];
  v18 = [uploadedDataIdentifier copy];
  v19 = v4[8];
  v4[8] = v18;

  *(v4 + 6) = [(SFUserReportFeedback *)self reportType];
  return v4;
}

- (SFUserReportFeedback)initWithSelection:(id)selection result:(id)result cardSection:(id)section
{
  selectionCopy = selection;
  resultCopy = result;
  sectionCopy = section;
  v15.receiver = self;
  v15.super_class = SFUserReportFeedback;
  v12 = [(SFFeedback *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_result, result);
    objc_storeStrong(&v13->_userSelection, selection);
    objc_storeStrong(&v13->_cardSection, section);
  }

  return v13;
}

- (SFUserReportFeedback)initWithSelection:(id)selection result:(id)result cardSection:(id)section resultSections:(id)sections uploadedDataIdentifier:(id)identifier userReportRequestType:(int)type
{
  sectionsCopy = sections;
  identifierCopy = identifier;
  v17 = [(SFUserReportFeedback *)self initWithSelection:selection result:result cardSection:section];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sections, sections);
    objc_storeStrong(&v18->_uploadedDataIdentifier, identifier);
    v18->_reportType = type;
  }

  return v18;
}

@end