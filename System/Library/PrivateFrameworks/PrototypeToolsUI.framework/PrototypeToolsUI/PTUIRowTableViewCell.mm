@interface PTUIRowTableViewCell
- (void)dealloc;
- (void)prepareForReuse;
- (void)rowDidReload:(id)reload;
- (void)setRow:(id)row;
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

- (void)setRow:(id)row
{
  rowCopy = row;
  [(PTRow *)self->_row removeObserver:self];
  row = self->_row;
  self->_row = rowCopy;
  v6 = rowCopy;

  [(PTRow *)self->_row addObserver:self];
  [(PTUIRowTableViewCell *)self updateCellCharacteristics];
  [(PTUIRowTableViewCell *)self updateDisplayedContent];

  [(PTUIRowTableViewCell *)self updateDisplayedValue];
}

- (void)updateDisplayedContent
{
  textLabel = [(PTUIRowTableViewCell *)self textLabel];
  v4 = [(PTUIRowTableViewCell *)self row];
  title = [v4 title];
  [textLabel setText:title];

  imageView = [(PTUIRowTableViewCell *)self imageView];
  v6 = [(PTUIRowTableViewCell *)self row];
  image = [v6 image];
  [imageView setImage:image];
}

- (void)updateCellCharacteristics
{
  textLabel = [(PTUIRowTableViewCell *)self textLabel];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [textLabel setFont:v4];

  v8 = [(PTUIRowTableViewCell *)self row];
  action = [v8 action];
  if (action || ([v8 defaultUIAction], (action = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = action;
    v7 = [(PTUIRowTableViewCell *)self isEditing]^ 1;
  }

  else
  {
    v7 = 0;
  }

  [(PTUIRowTableViewCell *)self setSelectionStyle:v7];
}

- (void)rowDidReload:(id)reload
{
  [(PTUIRowTableViewCell *)self updateDisplayedValue];

  [(PTUIRowTableViewCell *)self updateDisplayedContent];
}

@end