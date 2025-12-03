@interface SFUITTRReportComponent
+ (id)peopleSuggesterComponent;
- (SFUITTRReportComponent)initWithIdentifier:(id)identifier name:(id)name version:(id)version;
@end

@implementation SFUITTRReportComponent

+ (id)peopleSuggesterComponent
{
  v2 = [[SFUITTRReportComponent alloc] initWithIdentifier:@"655674" name:@"CoreDuet" version:@"PeopleSuggester"];

  return v2;
}

- (SFUITTRReportComponent)initWithIdentifier:(id)identifier name:(id)name version:(id)version
{
  identifierCopy = identifier;
  nameCopy = name;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = SFUITTRReportComponent;
  v11 = [(SFUITTRReportComponent *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [versionCopy copy];
    version = v11->_version;
    v11->_version = v16;
  }

  return v11;
}

@end