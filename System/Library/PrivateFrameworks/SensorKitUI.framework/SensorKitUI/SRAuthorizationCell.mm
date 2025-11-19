@interface SRAuthorizationCell
+ (id)authorizationCellForIndexPath:(id)a3 title:(id)a4 state:(id)a5 delegate:(id)a6 tableView:(id)a7;
- (SRAuthorizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)switchChanged;
@end

@implementation SRAuthorizationCell

- (SRAuthorizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = SRAuthorizationCell;
  v4 = [(SRAuthorizationCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(SRAuthorizationCell *)self delegate];
  v4 = [(UISwitch *)[(SRAuthorizationCell *)self toggle] isOn];
  v5 = [(SRAuthorizationCell *)self indexPath];

  [(SRAuthorizationCellDelegate *)v3 authorizationSwitchToggledWithValue:v4 indexPath:v5];
}

+ (id)authorizationCellForIndexPath:(id)a3 title:(id)a4 state:(id)a5 delegate:(id)a6 tableView:(id)a7
{
  v11 = [a7 dequeueReusableCellWithIdentifier:@"SRAuthorizationSwitchRowReuseIdentifier"];
  if (!v11)
  {
    v11 = [[SRAuthorizationCell alloc] initWithStyle:0 reuseIdentifier:@"SRAuthorizationSwitchRowReuseIdentifier"];
  }

  [-[SRAuthorizationCell textLabel](v11 "textLabel")];
  [(SRAuthorizationCell *)v11 setDelegate:a6];
  [(SRAuthorizationCell *)v11 setIndexPath:a3];
  -[UISwitch setOn:](-[SRAuthorizationCell toggle](v11, "toggle"), "setOn:", [a5 BOOLValue]);
  return v11;
}

@end