@interface UIWebFormSelectPeripheral
+ (id)createPeripheralWithDOMHTMLSelectElement:(id)a3;
- (UIWebFormSelectPeripheral)initWithDOMHTMLSelectElement:(id)a3;
- (void)dealloc;
@end

@implementation UIWebFormSelectPeripheral

- (UIWebFormSelectPeripheral)initWithDOMHTMLSelectElement:(id)a3
{
  v23.receiver = self;
  v23.super_class = UIWebFormSelectPeripheral;
  v4 = [(UIWebFormSelectPeripheral *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v22 = a3;
    [(UIWebFormSelectPeripheral *)v4 set_selectionNode:a3];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    WebThreadLock();
    v7 = [(DOMHTMLSelectElement *)v5->_selectionNode multiple];
    v8 = [(DOMHTMLSelectElement *)v5->_selectionNode completeLength];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = v8;
      do
      {
        v14 = [-[DOMHTMLSelectElement listItemAtIndex:](v5->_selectionNode listItemAtIndex:{v9), "createSelectedItem"}];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 isGroup];
          if ((v7 & 1) == 0)
          {
            v17 = [v15 selected];
            if (v12 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = v9;
            }

            else
            {
              v18 = v12;
            }

            if (v17)
            {
              v10 = v15;
              v12 = v18;
            }
          }

          v11 |= v16;
          [v6 addObject:v15];
        }

        ++v9;
      }

      while (v13 != v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
    {
      v19 = UIWebSelectPopover;
    }

    else
    {
      if (((v7 | v11) & 1) == 0)
      {
        v20 = [[UIWebSelectSinglePicker alloc] initWithDOMHTMLSelectElement:v22 allItems:v6];
        goto LABEL_21;
      }

      v19 = UIWebSelectMultiplePicker;
    }

    v20 = [[v19 alloc] initWithDOMHTMLSelectElement:v22 cachedItems:v6 singleSelectionItem:v10 singleSelectionIndex:v12 multipleSelection:v7];
LABEL_21:
    [(UIWebFormSelectPeripheral *)v5 set_selectControl:v20];
  }

  return v5;
}

+ (id)createPeripheralWithDOMHTMLSelectElement:(id)a3
{
  v3 = [[UIWebFormSelectPeripheral alloc] initWithDOMHTMLSelectElement:a3];

  return v3;
}

- (void)dealloc
{
  [(UIWebFormSelectPeripheral *)self set_selectionNode:0];
  [(UIWebFormSelectPeripheral *)self set_selectControl:0];
  v3.receiver = self;
  v3.super_class = UIWebFormSelectPeripheral;
  [(UIWebFormSelectPeripheral *)&v3 dealloc];
}

@end