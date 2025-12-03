@interface SRAuthorizationCell
+ (id)authorizationCellForIndexPath:(id)path title:(id)title state:(id)state delegate:(id)delegate tableView:(id)view;
- (SRAuthorizationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)switchChanged;
@end

@implementation SRAuthorizationCell

- (SRAuthorizationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = SRAuthorizationCell;
  v4 = [(SRAuthorizationCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SRAuthorizationCell *)v4 setSelectionStyle:0];
    -[SRAuthorizationCell setToggle:](v5, "setToggle:", [objc_alloc(MEMORY[0x277D75AE8]) initWithFrame:{0.0, 0.0, 0.0, 0.0}]);
    [(UISwitch *)[(SRAuthorizationCell *)v5 toggle] addTarget:v5 action:sel_switchChanged forControlEvents:4096];
    [(SRAuthorizationCell *)v5 setAccessoryView:[(SRAuthorizationCell *)v5 toggle]];
    [-[SRAuthorizationCell textLabel](v5 "textLabel")];
    [-[SRAuthorizationCell textLabel](v5 "textLabel")];
    [-[SRAuthorizationCell detailTextLabel](v5 "detailTextLabel")];
    [-[SRAuthorizationCell detailTextLabel](v5 "detailTextLabel")];
  }

  return v5;
}

- (void)dealloc
{
  [(SRAuthorizationCell *)self setIndexPath:0];
  [(SRAuthorizationCell *)self setToggle:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationCell;
  [(SRAuthorizationCell *)&v3 dealloc];
}

- (void)switchChanged
{
  delegate = [(SRAuthorizationCell *)self delegate];
  isOn = [(UISwitch *)[(SRAuthorizationCell *)self toggle] isOn];
  indexPath = [(SRAuthorizationCell *)self indexPath];

  [(SRAuthorizationCellDelegate *)delegate authorizationSwitchToggledWithValue:isOn indexPath:indexPath];
}

+ (id)authorizationCellForIndexPath:(id)path title:(id)title state:(id)state delegate:(id)delegate tableView:(id)view
{
  v11 = [view dequeueReusableCellWithIdentifier:@"SRAuthorizationSwitchRowReuseIdentifier"];
  if (!v11)
  {
    v11 = [[SRAuthorizationCell alloc] initWithStyle:0 reuseIdentifier:@"SRAuthorizationSwitchRowReuseIdentifier"];
  }

  [-[SRAuthorizationCell textLabel](v11 "textLabel")];
  [(SRAuthorizationCell *)v11 setDelegate:delegate];
  [(SRAuthorizationCell *)v11 setIndexPath:path];
  -[UISwitch setOn:](-[SRAuthorizationCell toggle](v11, "toggle"), "setOn:", [state BOOLValue]);
  return v11;
}

@end