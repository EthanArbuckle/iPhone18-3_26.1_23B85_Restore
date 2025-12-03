@interface SBCollectionViewCell
- (SBCollectionViewCellDelegate)delegate;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted afterDelay:(double)delay;
@end

@implementation SBCollectionViewCell

- (void)setHighlighted:(BOOL)highlighted afterDelay:(double)delay
{
  highlightedCopy = highlighted;
  v9[1] = *MEMORY[0x277D85DE8];
  if (delay > 0.0 || !self->_protectDelayedUnhighlights || highlighted)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performSetHighlighted object:0];
    if ([(SBCollectionViewCell *)self isHighlighted]!= highlightedCopy)
    {
      if (delay <= 0.0)
      {
        v8.receiver = self;
        v8.super_class = SBCollectionViewCell;
        [(SBCollectionViewCell *)&v8 setHighlighted:highlightedCopy];
        if ([(SBCollectionViewCell *)self isHighlighted]== highlightedCopy)
        {
          [(SBCollectionViewCell *)self _didSetHighlighted:highlightedCopy];
        }
      }

      else
      {
        self->_performSetHighlighted = highlightedCopy;
        v9[0] = *MEMORY[0x277CBE738];
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [(SBCollectionViewCell *)self performSelector:sel__performSetHighlighted withObject:0 afterDelay:v7 inModes:delay];
      }
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBCollectionViewCell;
  [(SBCollectionViewCell *)&v3 prepareForReuse];
  self->_protectDelayedUnhighlights = 0;
  [(SBCollectionViewCell *)self setHighlighted:0];
}

- (SBCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end