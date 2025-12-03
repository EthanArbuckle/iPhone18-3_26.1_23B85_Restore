@interface PSTextEditingCell
- (void)layoutSubviews;
@end

@implementation PSTextEditingCell

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PSTextEditingCell;
  [(PSTextEditingCell *)&v11 layoutSubviews];
  editableTextField = [(PSTextEditingCell *)self editableTextField];
  [editableTextField frame];
  v5 = v4;
  v7 = v6;

  [(PSTextEditingCell *)self frame];
  v8 = CGRectGetWidth(v12) + -40.0;
  editableTextField2 = [(PSTextEditingCell *)self editableTextField];
  [editableTextField2 setFrame:{20.0, v5, v8, v7}];

  editableTextField3 = [(PSTextEditingCell *)self editableTextField];
  [editableTextField3 setTextAlignment:1];
}

@end