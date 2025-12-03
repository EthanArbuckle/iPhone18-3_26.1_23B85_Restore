@interface SKUIEditorialCardCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (SKUIEditorialCardCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)viewForElementIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setPerspectiveTargetView:(id)view;
@end

@implementation SKUIEditorialCardCollectionViewCell

- (SKUIEditorialCardCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCardCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIEditorialCardCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allLockupViews = height->_allLockupViews;
    height->_allLockupViews = v9;

    [(SKUIViewReuseCollectionViewCell *)height registerClass:objc_opt_class() forViewWithReuseIdentifier:@"editorialCardLockup"];
  }

  return height;
}

- (void)setPerspectiveTargetView:(id)view
{
  primaryLockupView = self->_primaryLockupView;
  viewCopy = view;
  [(SKUIVerticalLockupView *)primaryLockupView setPerspectiveTargetView:viewCopy];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SKUIEditorialCardCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2781F95A0;
  reasonCopy = reason;
  v9 = contextCopy;
  v12 = v9;
  v13 = &v15;
  [elementCopy enumerateChildrenUsingBlock:v11];
  LOBYTE(reason) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return reason;
}

void __86__SKUIEditorialCardCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 66)
  {
    *(*(a1[5] + 8) + 24) = (*(*(a1[5] + 8) + 24) | [SKUIVerticalLockupView prefetchResourcesForViewElement:v3 reason:a1[6] context:a1[4]]) & 1;
  }
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v9 = [[SKUIEditorialCardLayout alloc] initWithCard:elementCopy width:contextCopy context:width];

  primaryLockup = [(SKUIEditorialCardLayout *)v9 primaryLockup];
  if (primaryLockup)
  {
    [(SKUIEditorialCardLayout *)v9 primaryLockupSize];
    [SKUIVerticalLockupView requestLayoutForViewElement:primaryLockup width:contextCopy context:?];
  }

  [(SKUIEditorialCardLayout *)v9 secondaryLockupWidth];
  v12 = v11;
  allLockups = [(SKUIEditorialCardLayout *)v9 allLockups];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SKUIEditorialCardCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v16[3] = &unk_2781FDAF8;
  v19 = v12;
  v17 = primaryLockup;
  v18 = contextCopy;
  v14 = contextCopy;
  v15 = primaryLockup;
  [allLockups enumerateObjectsUsingBlock:v16];
}

uint64_t __81__SKUIEditorialCardCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [SKUIVerticalLockupView requestLayoutForViewElement:a2 width:*(result + 40) context:*(result + 48)];
  }

  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v29 = &unk_215F8ACD7;
  widthCopy = width;
  v31 = 0;
  v9 = [[SKUIEditorialCardLayout alloc] initWithCard:elementCopy width:contextCopy context:width];
  primaryLockup = [(SKUIEditorialCardLayout *)v9 primaryLockup];
  if (primaryLockup)
  {
    [(SKUIEditorialCardLayout *)v9 primaryLockupSize];
    *(v27 + 5) = v11;
  }

  [(SKUIEditorialCardLayout *)v9 secondaryLockupWidth];
  v13 = v12;
  allLockups = [(SKUIEditorialCardLayout *)v9 allLockups];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__SKUIEditorialCardCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v21[3] = &unk_2781FDB20;
  v15 = primaryLockup;
  v22 = v15;
  v25 = v13;
  v16 = contextCopy;
  v23 = v16;
  v24 = &v26;
  [allLockups enumerateObjectsUsingBlock:v21];

  v17 = v27[4];
  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

uint64_t __77__SKUIEditorialCardCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    v2 = result;
    result = [SKUIVerticalLockupView sizeThatFitsWidth:a2 viewElement:*(v2 + 40) context:*(v2 + 56)];
    v4 = *(*(v2 + 48) + 8);
    v5 = *(v4 + 40);
    if (v5 < v3)
    {
      v5 = v3;
    }

    *(v4 + 40) = v5;
  }

  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = [[SKUIEditorialCardLayout alloc] initWithCard:elementCopy width:contextCopy context:width];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__51;
  v30 = __Block_byref_object_dispose__51;
  v31 = 0;
  [(NSMutableArray *)self->_allLockupViews removeAllObjects];
  primaryLockupView = self->_primaryLockupView;
  self->_primaryLockupView = 0;

  [(SKUIEditorialCardLayout *)v10 primaryLockupSize];
  self->_primaryLockupSize.width = v12;
  self->_primaryLockupSize.height = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __75__SKUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v21 = &unk_2781FDB70;
  v14 = v10;
  v22 = v14;
  v15 = contextCopy;
  v23 = v15;
  selfCopy = self;
  v25 = &v26;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v18];
  v16 = v27[5];
  if (v16)
  {
    superview = [v16 superview];
    [superview bringSubviewToFront:v27[5]];
  }

  _Block_object_dispose(&v26, 8);
}

void __75__SKUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) primaryLockup];
  [*(a1 + 32) secondaryLockupWidth];
  v6 = v5;
  v7 = [*(a1 + 32) allLockups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SKUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v10[3] = &unk_2781FDB48;
  v11 = v3;
  v12 = v4;
  v15 = v6;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v4;
  v9 = v3;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __75__SKUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) addReusableViewWithReuseIdentifier:@"editorialCardLockup"];
  [v3 setSizingStyle:0];
  if (*(a1 + 40) == v5)
  {
    [v3 reloadWithViewElement:*(*(a1 + 56) + 840) width:? context:?];
    objc_storeStrong((*(a1 + 56) + 832), v3);
  }

  else
  {
    [v3 reloadWithViewElement:*(a1 + 72) width:? context:?];
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [v5 firstChildForElementType:13];

    if (v4)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
    }
  }

  [*(*(a1 + 56) + 824) addObject:v3];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_allLockupViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= [*(*(&v18 + 1) + 8 * i) setImage:imageCopy forArtworkRequest:requestCopy context:{contextCopy, v18}];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  contextCopy = context;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_allLockupViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 |= [*(*(&v17 + 1) + 8 * i) updateWithItemState:stateCopy context:contextCopy animated:{animatedCopy, v17}];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

- (id)viewForElementIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allLockupViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) viewForElementIdentifier:{identifierCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)layoutSubviews
{
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = SKUIEditorialCardCollectionViewCell;
  [(SKUICollectionViewCell *)&v49 layoutSubviews];
  v3 = [(NSMutableArray *)self->_allLockupViews count];
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = v3;
    contentView = [(SKUIEditorialCardCollectionViewCell *)self contentView];
    [contentView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SKUIViewReuseCollectionViewCell *)self contentInset];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v12 - (v17 + v21);

    v23 = v4;
    v24 = v22 - v4 * 15.0;
    v25 = floorf(v24);
    if (self->_primaryLockupView)
    {
      v25 = v25 - self->_primaryLockupSize.width;
    }

    else
    {
      v23 = v5;
    }

    v26 = v25 / v23;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = self->_allLockupViews;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = v8 + v18;
      v31 = v10 + v16;
      v32 = v14 - (v16 + v20);
      v33 = v26;
      v34 = floorf(v33);
      v35 = *v46;
      do
      {
        v36 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v27);
          }

          v37 = *(*(&v45 + 1) + 8 * v36);
          height = v32;
          width = v34;
          if (v37 == self->_primaryLockupView)
          {
            width = self->_primaryLockupSize.width;
            height = self->_primaryLockupSize.height;
          }

          contentView2 = [(SKUIEditorialCardCollectionViewCell *)self contentView];
          [contentView2 bounds];
          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v30, v31, width, height, v41, v42, v43, v44);
          [(SKUIVerticalLockupView *)v37 setFrame:?];

          v52.origin.x = v30;
          v52.origin.y = v31;
          v52.size.width = width;
          v52.size.height = height;
          v30 = CGRectGetMaxX(v52) + 15.0;
          ++v36;
        }

        while (v29 != v36);
        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v29);
    }
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCardCollectionViewCell initWithFrame:]";
}

@end