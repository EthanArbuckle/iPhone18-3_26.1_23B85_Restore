@interface TSKToolbarButtonCollectionView
- (TSKToolbarButtonCollectionView)initWithHeight:(double)height items:(id)items maximumWidth:(double)width;
@end

@implementation TSKToolbarButtonCollectionView

- (TSKToolbarButtonCollectionView)initWithHeight:(double)height items:(id)items maximumWidth:(double)width
{
  v71 = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = TSKToolbarButtonCollectionView;
  v8 = 0.0;
  height = [(TSKToolbarButtonCollectionView *)&v68 initWithFrame:0.0, 0.0, 0.0, height];
  if (height)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(items, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v11 = [items countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v11)
    {
      v12 = v11;
      v59 = 0;
      v13 = *v65;
      v14 = 0x277D75000uLL;
      v15 = 0x279D44000uLL;
      v16 = 0x277D75000uLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v65 != v13)
          {
            objc_enumerationMutation(items);
          }

          v18 = *(*(&v64 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 bounds];
            v20 = v19;
            v22 = v21;
            [(TSKToolbarButtonCollectionView *)height addSubview:v18];
            if (v59)
            {
              v23 = v8 + 5.0;
            }

            else
            {
              v23 = v8;
            }

            TSURound();
            [v18 setFrame:{v23, v24, v20, v22}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 frame];
              [v18 setHitBufferTop:v26 left:5.0 bottom:height - (v26 + v25) right:5.0];
            }

            v8 = v23 + v20;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (width > 0.0 && (isKindOfClass & 1) != 0)
            {
              [v10 addObject:v18];
            }

            v59 = 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 width];
              v59 = 0;
              v8 = v8 + v28;
            }

            else
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v29 = v10;
              v30 = v16;
              v31 = v12;
              v32 = v13;
              v33 = v14;
              v34 = v15;
              v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKToolbarButtonCollectionView initWithHeight:items:maximumWidth:]"];
              v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKToolbar.m"];
              v37 = v35;
              v15 = v34;
              v14 = v33;
              v13 = v32;
              v12 = v31;
              v16 = v30;
              v10 = v29;
              [currentHandler handleFailureInFunction:v37 file:v36 lineNumber:336 description:@"Something other than a UIView or a TSKToolbarSpace found"];
            }
          }
        }

        v12 = [items countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v12);
    }

    if (width <= 0.0)
    {
      v39 = v8;
    }

    else
    {
      while (v8 > width)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v38 = [v10 countByEnumeratingWithState:&v60 objects:v69 count:16];
        v39 = v8;
        if (v38)
        {
          v40 = v38;
          v41 = *v61;
          v39 = v8;
          do
          {
            v42 = 0;
            do
            {
              if (*v61 != v41)
              {
                objc_enumerationMutation(v10);
              }

              v43 = *(*(&v60 + 1) + 8 * v42);
              [v43 frame];
              [v43 frame];
              v45 = v44;
              v46 = [objc_msgSend(v43 "titleLabel")];
              [v46 pointSize];
              if (v47 >= 1.0)
              {
                [objc_msgSend(v43 "titleLabel")];
                [v43 sizeToFit];
                [v43 frame];
                v49 = v45 - v48;
                [v43 setFrame:?];
                v39 = v39 - v49;
                for (j = [items indexOfObject:v43] + 1; j < objc_msgSend(items, "count"); ++j)
                {
                  v51 = [items objectAtIndex:j];
                  if ([-[TSKToolbarButtonCollectionView subviews](height "subviews")])
                  {
                    [v51 frame];
                    [v51 setFrame:v52 - v49];
                  }
                }
              }

              ++v42;
            }

            while (v42 != v40);
            v53 = [v10 countByEnumeratingWithState:&v60 objects:v69 count:16];
            v40 = v53;
          }

          while (v53);
        }

        v54 = v39 == v8;
        v8 = v39;
        if (v54)
        {
          goto LABEL_43;
        }
      }

      v39 = v8;
LABEL_43:
      if (v39 > width)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKToolbarButtonCollectionView initWithHeight:items:maximumWidth:]"];
        [currentHandler2 handleFailureInFunction:v56 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKToolbar.m"), 397, @"Unable to reduce width to %g; going with %g", *&width, *&v39}];
      }
    }

    [(TSKToolbarButtonCollectionView *)height setFrame:0.0, 0.0, v39, height];
  }

  return height;
}

@end