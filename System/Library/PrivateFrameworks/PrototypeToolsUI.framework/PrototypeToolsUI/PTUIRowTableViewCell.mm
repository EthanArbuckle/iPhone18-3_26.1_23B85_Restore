@interface PTUIRowTableViewCell
- (void)dealloc;
- (void)prepareForReuse;
- (void)rowDidReload:(id)a3;
- (void)setRow:(id)a3;
- (void)updateCellCharacteristics;
- (void)updateDisplayedContent;
@end

@implementation PTUIRowTableViewCell

- (void)dealloc
{
  [(PTRow *)self->_row removeObserver:self];
  v3.receiver = self;
  v3.super_class = PTUIRowTableViewCell;
  [(PTUIRowTableViewCell *)&v3 dealloc];
}

- (void)prepareForReuse
{
  [(PTUIRowTableViewCell *)self setRow:0];
  v3.receiver = self;
  v3.super_class = PTUIRowTableViewCell;
  [(PTUIRowTableViewCell *)&v3 prepareForReuse];
}

- (void)setRow:(id)a3
{
  v4 = a3;
  [(PTRow *)self->_row removeObserver:self];
  row = self->_row;
  self->_row = v4;
  v6 = v4;

  [(PTRow *)self->_row addObserver:self];
  [(PTUIRowTableViewCell *)self updateCellCharacteristics];
  [(PTUIRowTableViewCell *)self updateDisplayedContent];

  [(PTUIRowTableViewCell *)self updateDisplayedValue];
}

- (void)updateDisplayedContent
{
  v3 = [(PTUIRowTableViewCell *)self textLabel];
  v4 = [(PTUIRowTableViewCell *)self row];
  v5 = [v4 title];
  [v3 setText:v5];

  v8 = [(PTUIRowTableViewCell *)self imageView];
  v6 = [(PTUIRowTableViewCell *)self row];
  v7 = [v6 image];
  [v8 setImage:v7];
}

- (void)updateCellCharacteristics
{
  v3 = [(PTUIRowTableViewCell *)self textLabel];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [v3 setFont:v4];

  v8 = [(PTUIRowTableViewCell *)self row];
  v5 = [v8 action];
  if (v5 || ([v8 defaultUIAction], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(PTUIRowTableViewCell *)self isEditing]^ 1;
  }

  else
  {
    v7 = 0;
  }

  [(PTUIRowTableViewCell *)self setSelectionStyle:v7];
}

- (void)rowDidReload:(id)a3
{
  [(PTUIRowTableViewCell *)self updateDisplayedValue];

  [(PTUIRowTableViewCell *)self updateDisplayedContent];
}

@end