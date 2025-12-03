@interface PRRETableViewCell
- (void)_configure;
- (void)_valueChanged:(id)changed;
- (void)prepareForReuse;
@end

@implementation PRRETableViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PRRETableViewCell;
  [(PRRETableViewCell *)&v3 prepareForReuse];
  [(PRRETableViewCell *)self setTag:0];
}

- (void)_valueChanged:(id)changed
{
  _tableView = [(PRRETableViewCell *)self _tableView];
  delegate = [_tableView delegate];
  _currentValue = [(PRRETableViewCell *)self _currentValue];
  [delegate cell:self valueChanged:_currentValue];
}

- (void)_configure
{
  defaultContentConfiguration = [(PRRETableViewCell *)self defaultContentConfiguration];
  v3 = NSStringForPRSceneSetting([(PRRETableViewCell *)self tag]);
  [defaultContentConfiguration setText:v3];

  [(PRRETableViewCell *)self setContentConfiguration:defaultContentConfiguration];
}

@end