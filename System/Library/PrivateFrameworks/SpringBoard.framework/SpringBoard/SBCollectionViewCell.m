@interface SBCollectionViewCell
- (SBCollectionViewCellDelegate)delegate;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 afterDelay:(double)a4;
@end

@implementation SBCollectionViewCell

- (void)setHighlighted:(BOOL)a3 afterDelay:(double)a4
{
  v5 = a3;
  v9[1] = *MEMORY[0x277D85DE8];
  if (a4 > 0.0 || !self->_protectDelayedUnhighlights || a3)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performSetHighlighted object:0];
    if ([(SBCollectionViewCell *)self isHighlighted]!= v5)
    {
      if (a4 <= 0.0)
      {
        v8.receiver = self;
        v8.super_class = SBCollectionViewCell;
        [(SBCollectionViewCell *)&v8 setHighlighted:v5];
        if ([(SBCollectionViewCell *)self isHighlighted]== v5)
        {
          [(SBCollectionViewCell *)self _didSetHighlighted:v5];
        }
      }

      else
      {
        self->_performSetHighlighted = v5;
        v9[0] = *MEMORY[0x277CBE738];
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [(SBCollectionViewCell *)self performSelector:sel__performSetHighlighted withObject:0 afterDelay:v7 inModes:a4];
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