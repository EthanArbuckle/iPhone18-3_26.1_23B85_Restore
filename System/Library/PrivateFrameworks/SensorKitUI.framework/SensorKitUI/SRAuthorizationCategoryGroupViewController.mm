@interface SRAuthorizationCategoryGroupViewController
- (BOOL)indexPathIsInWriterSection:(id)section;
- (SRAuthorizationCategoryGroupViewController)init;
- (id)serviceFromIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)readerAuthSectionStart;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)usageSectionStart;
- (int64_t)writerAuthSectionStart;
- (void)dealloc;
- (void)openPrivacy;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SRAuthorizationCategoryGroupViewController

- (SRAuthorizationCategoryGroupViewController)init
{
  v3.receiver = self;
  v3.super_class = SRAuthorizationCategoryGroupViewController;
  return [(SRAuthorizationCategoryGroupViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SRAuthorizationCategoryGroupViewController;
  [(SRAuthorizationCategoryGroupViewController *)&v3 viewDidLoad];
  -[SRAuthorizationCategoryGroupViewController setSortedReaderAuthorizationServices:](self, "setSortedReaderAuthorizationServices:", [MEMORY[0x277CBEA60] skui_sortedServices:{-[NSMutableDictionary allKeys](-[SRAuthorizationCategoryGroupViewController readerAuthState](self, "readerAuthState"), "allKeys")}]);
  -[SRAuthorizationCategoryGroupViewController setSortedWriterAuthorizationServices:](self, "setSortedWriterAuthorizationServices:", [MEMORY[0x277CBEA60] skui_sortedServices:{-[NSMutableDictionary allKeys](-[SRAuthorizationCategoryGroupViewController writerAuthState](self, "writerAuthState"), "allKeys")}]);
}

- (void)dealloc
{
  [(SRAuthorizationCategoryGroupViewController *)self setAppBundle:0];
  [(SRAuthorizationCategoryGroupViewController *)self setSortedReaderAuthorizationServices:0];
  [(SRAuthorizationCategoryGroupViewController *)self setSortedWriterAuthorizationServices:0];
  [(SRAuthorizationCategoryGroupViewController *)self setReaderAuthState:0];
  [(SRAuthorizationCategoryGroupViewController *)self setWriterAuthState:0];
  [(SRAuthorizationCategoryGroupViewController *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationCategoryGroupViewController;
  [(SRAuthorizationCategoryGroupViewController *)&v3 dealloc];
}

- (int64_t)usageSectionStart
{
  if ([(NSMutableDictionary *)[(SRAuthorizationCategoryGroupViewController *)self readerAuthState] count])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (int64_t)writerAuthSectionStart
{
  if ([(NSMutableDictionary *)[(SRAuthorizationCategoryGroupViewController *)self writerAuthState] count])
  {
    return [(SRAuthorizationCategoryGroupViewController *)self usageSectionStart]+ 1;
  }

  else
  {
    return -1;
  }
}

- (int64_t)readerAuthSectionStart
{
  if ([(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart]== -1)
  {
    return [(SRAuthorizationCategoryGroupViewController *)self usageSectionStart]+ 1;
  }

  writerAuthSectionStart = [(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart];
  return [(NSMutableDictionary *)[(SRAuthorizationCategoryGroupViewController *)self writerAuthState] count]+ writerAuthSectionStart;
}

- (BOOL)indexPathIsInWriterSection:(id)section
{
  section = [section section];
  if (section < [(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart])
  {
    return 0;
  }

  section2 = [section section];
  return section2 < [(SRAuthorizationCategoryGroupViewController *)self readerAuthSectionStart];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(SRAuthorizationCategoryGroupViewController *)self usageSectionStart]== section)
  {
    v6 = 31;
  }

  else if ([(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart]== section)
  {
    v6 = 32;
  }

  else
  {
    if ([(SRAuthorizationCategoryGroupViewController *)self readerAuthSectionStart]!= section)
    {
      return 0;
    }

    v6 = 33;
  }

  v7 = MEMORY[0x277CCACA8];

  return [v7 srui_localizedStringForCode:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  usageSectionStart = [(SRAuthorizationCategoryGroupViewController *)self usageSectionStart];
  v5 = [(NSMutableDictionary *)[(SRAuthorizationCategoryGroupViewController *)self writerAuthState] count];
  v6 = [(NSMutableDictionary *)[(SRAuthorizationCategoryGroupViewController *)self readerAuthState] count];
  if (usageSectionStart == -1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 + 1;
  }

  return v7 + v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(SRAuthorizationCategoryGroupViewController *)self usageSectionStart]== section)
  {
    return 1;
  }

  if ([(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart]== section)
  {
    return 3;
  }

  if ([(SRAuthorizationCategoryGroupViewController *)self readerAuthSectionStart]<= section)
  {
    return 3;
  }

  return 0;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  section = [path section];
  v8 = [path row];
  if (section == [(SRAuthorizationCategoryGroupViewController *)self usageSectionStart])
  {
    v9 = [SRAppUsageCell alloc];
    v10 = objc_opt_class();
    v11 = [(SRAppUsageCell *)v9 initWithStyle:0 reuseIdentifier:NSStringFromClass(v10)];
    [(UILabel *)[(SRAppUsageCell *)v11 label] setText:[(NSBundle *)[(SRAuthorizationCategoryGroupViewController *)self appBundle] sk_usageDescription]];
    srui_localizedPrivacyPolicyLinkTitle = [(NSBundle *)[(SRAuthorizationCategoryGroupViewController *)self appBundle] srui_localizedPrivacyPolicyLinkTitle];
    if (srui_localizedPrivacyPolicyLinkTitle)
    {
      -[UIButton setTitle:forState:](-[SRAppUsageCell button](v11, "button"), "setTitle:forState:", [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", srui_localizedPrivacyPolicyLinkTitle], 0);
      [(UIButton *)[(SRAppUsageCell *)v11 button] addTarget:self action:sel_openPrivacy forControlEvents:64];
      [(UIButton *)[(SRAppUsageCell *)v11 button] setAccessibilityTraits:*MEMORY[0x277D76570]];
      [(UILabel *)[(UIButton *)[(SRAppUsageCell *)v11 button] titleLabel] setLineBreakMode:0];
      [(UILabel *)[(UIButton *)[(SRAppUsageCell *)v11 button] titleLabel] setNumberOfLines:0];
      [-[SRAuthorizationCategoryGroupViewController tableView](self "tableView")];
      v14 = v13;
      v16 = v15;
      contentView = [(SRAppUsageCell *)v11 contentView];
      v18 = 16.0;
LABEL_4:
      [contentView setLayoutMargins:{v18, v14, 16.0, v16}];
      return v11;
    }

    goto LABEL_14;
  }

  v20 = [(SRAuthorizationCategoryGroupViewController *)self serviceFromIndexPath:path];
  if (!v20)
  {
LABEL_14:
    v26 = objc_opt_new();

    return v26;
  }

  v21 = v20;
  if ([(SRAuthorizationCategoryGroupViewController *)self indexPathIsInWriterSection:path])
  {
    writerAuthState = [(SRAuthorizationCategoryGroupViewController *)self writerAuthState];
  }

  else
  {
    writerAuthState = [(SRAuthorizationCategoryGroupViewController *)self readerAuthState];
  }

  v23 = [(NSMutableDictionary *)writerAuthState objectForKeyedSubscript:v21];
  v24 = [SRAuthorizationGroup authorizationGroupWithServiceName:v21];
  if (v8 != 2)
  {
    v25 = v24;
    if (v8 == 1)
    {
      v27 = *MEMORY[0x277D76918];
      v28 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:2 options:2];
      v29 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
      v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:v27];
      v11 = +[SRAuthorizationCategoryDetailCell categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:](SRAuthorizationCategoryDetailCell, "categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:", v25, -[SRAuthorizationCategoryGroupViewController appBundle](self, "appBundle"), v29, v30, [MEMORY[0x277D75348] secondaryLabelColor], 0);
      [-[SRAuthorizationCategoryGroupViewController tableView](self "tableView")];
      v14 = v31;
      v16 = v32;
      contentView = [(SRAppUsageCell *)v11 contentView];
      v18 = 18.0;
      goto LABEL_4;
    }

    if (!v8)
    {
      v11 = [SRAuthorizationCell authorizationCellForIndexPath:path title:[(SRAuthorizationGroup *)v24 localizedDisplayName] state:v23 delegate:self tableView:view];
      [-[SRAppUsageCell textLabel](v11 "textLabel")];
      return v11;
    }

    goto LABEL_14;
  }

  v33 = MEMORY[0x277D75B48];

  return [v33 skui_tableViewCellForDataSample:view];
}

- (id)serviceFromIndexPath:(id)path
{
  v5 = [(SRAuthorizationCategoryGroupViewController *)self indexPathIsInWriterSection:?];
  section = [path section];
  if (!v5)
  {
    v7 = section - [(SRAuthorizationCategoryGroupViewController *)self readerAuthSectionStart];
    if (v7 < [(NSArray *)[(SRAuthorizationCategoryGroupViewController *)self sortedReaderAuthorizationServices] count])
    {
      sortedReaderAuthorizationServices = [(SRAuthorizationCategoryGroupViewController *)self sortedReaderAuthorizationServices];
      goto LABEL_6;
    }

    return 0;
  }

  v7 = section - [(SRAuthorizationCategoryGroupViewController *)self writerAuthSectionStart];
  if (v7 >= [(NSArray *)[(SRAuthorizationCategoryGroupViewController *)self sortedWriterAuthorizationServices] count])
  {
    return 0;
  }

  sortedReaderAuthorizationServices = [(SRAuthorizationCategoryGroupViewController *)self sortedWriterAuthorizationServices];
LABEL_6:

  return [(NSArray *)sortedReaderAuthorizationServices objectAtIndexedSubscript:v7];
}

uint64_t __92__SRAuthorizationCategoryGroupViewController_authorizationSwitchToggledWithValue_indexPath___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 57);

  return [Weak confirmAuthChangeForService:v4 value:v3 indexPath:v5 setOverride:v6];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  section = [path section];
  v7 = [path row];
  if (section != [(SRAuthorizationCategoryGroupViewController *)self usageSectionStart]&& v7 == 2)
  {
    v8 = [SRSampleViewController sampleViewControllerForAuthGroup:[SRAuthorizationGroup authorizationGroupWithServiceName:[(SRAuthorizationCategoryGroupViewController *)self serviceFromIndexPath:path]]];

    [(UIViewController *)self sk_showViewController:v8 animated:1];
  }
}

- (void)openPrivacy
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  sk_privacyURL = [(NSBundle *)[(SRAuthorizationCategoryGroupViewController *)self appBundle] sk_privacyURL];

  [defaultWorkspace openURL:sk_privacyURL withOptions:0];
}

@end