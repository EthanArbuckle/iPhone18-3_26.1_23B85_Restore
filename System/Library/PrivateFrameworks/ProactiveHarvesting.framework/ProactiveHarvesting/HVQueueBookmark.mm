@interface HVQueueBookmark
- (id)jsonDict;
- (void)reset;
@end

@implementation HVQueueBookmark

- (id)jsonDict
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"los";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_los];
  v14[0] = v3;
  v13[1] = @"pastBookmark";
  v4 = [(BMBookmark *)self->_pastBookmark debugDescription];
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = null;
  v13[2] = @"futureCutoff";
  futureCutoff = self->_futureCutoff;
  null2 = futureCutoff;
  if (!futureCutoff)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v14[2] = null2;
  v13[3] = @"futureBookmark";
  v8 = [(BMBookmark *)self->_futureBookmark debugDescription];
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (!v8)
  {
  }

  if (futureCutoff)
  {
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)reset
{
  self->_los = 0;
  pastBookmark = self->_pastBookmark;
  self->_pastBookmark = 0;

  futureCutoff = self->_futureCutoff;
  self->_futureCutoff = 0;

  futureBookmark = self->_futureBookmark;
  self->_futureBookmark = 0;
}

@end