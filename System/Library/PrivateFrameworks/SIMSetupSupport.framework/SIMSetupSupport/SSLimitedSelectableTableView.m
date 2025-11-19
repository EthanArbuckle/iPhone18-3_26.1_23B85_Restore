@interface SSLimitedSelectableTableView
- (SSLimitedSelectableTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4 limit:(unint64_t)a5;
- (UITableViewDelegate)viewDelegate;
- (void)_refreshTableView;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SSLimitedSelectableTableView

- (SSLimitedSelectableTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4 limit:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = SSLimitedSelectableTableView;
  result = [(SSLimitedSelectableTableView *)&v7 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_limit = a5;
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  [(SSLimitedSelectableTableView *)self setViewDelegate:a3];
  v4.receiver = self;
  v4.super_class = SSLimitedSelectableTableView;
  [(SSLimitedSelectableTableView *)&v4 setDelegate:self];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SSLimitedSelectableTableView *)self _refreshTableView];
  v8 = [(SSLimitedSelectableTableView *)self viewDelegate];
  [v8 tableView:v7 didSelectRowAtIndexPath:v6];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SSLimitedSelectableTableView *)self _refreshTableView];
  v8 = [(SSLimitedSelectableTableView *)self viewDelegate];
  [v8 tableView:v7 didDeselectRowAtIndexPath:v6];
}

- (void)_refreshTableView
{
  if ([(SSLimitedSelectableTableView *)self numberOfSections])
  {
    v3 = 0;
    do
    {
      if ([(SSLimitedSelectableTableView *)self numberOfRowsInSection:v3])
      {
        v4 = 0;
        do
        {
          v5 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v3];
          v6 = [(SSLimitedSelectableTableView *)self cellForRowAtIndexPath:v5];
          v7 = [(SSLimitedSelectableTableView *)self indexPathsForSelectedRows];
          v8 = [v7 containsObject:v5];

          if (v8)
          {
            [v6 setAccessoryType:3];
          }

          else
          {
            [v6 setAccessoryType:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = [(SSLimitedSelectableTableView *)self indexPathsForSelectedRows];
              [v6 setEnable:{objc_msgSend(v9, "count") < -[SSLimitedSelectableTableView limit](self, "limit")}];
            }

            else
            {
              [v6 setUserInteractionEnabled:0];
              v9 = [v6 imageView];
              v10 = [MEMORY[0x277D75348] systemGrayColor];
              [v9 setTintColor:v10];
            }
          }

          ++v4;
        }

        while (v4 < [(SSLimitedSelectableTableView *)self numberOfRowsInSection:v3]);
      }

      ++v3;
    }

    while (v3 < [(SSLimitedSelectableTableView *)self numberOfSections]);
  }
}

- (UITableViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

@end