@interface SFUITTRReport
+ (id)peopleSuggestionReport;
- (SFUITTRReport)initWithTitle:(id)a3 desc:(id)a4 component:(id)a5;
@end

@implementation SFUITTRReport

+ (id)peopleSuggestionReport
{
  v2 = [SFUITTRReport alloc];
  v3 = +[SFUITTRReportComponent peopleSuggesterComponent];
  v4 = [(SFUITTRReport *)v2 initWithTitle:@"TTR Share Sheet People Suggestions:" desc:@"What did you like about the suggestions?\n\n\n\nWhat did you not like about the suggestions?\n\n\n\nWhat didn't make sense in the suggestions?\n\n\n\nWhat were you sharing?\n\n\n\n" component:v3];

  return v4;
}

- (SFUITTRReport)initWithTitle:(id)a3 desc:(id)a4 component:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SFUITTRReport;
  v11 = [(SFUITTRReport *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    desc = v11->_desc;
    v11->_desc = v14;

    objc_storeStrong(&v11->_component, a5);
  }

  return v11;
}

@end