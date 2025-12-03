@interface GQHTableCellStyle
+ (void)mapStyle:(id)style style:(id)a4 state:(id)state cell:(id)cell level:(int)level;
@end

@implementation GQHTableCellStyle

+ (void)mapStyle:(id)style style:(id)a4 state:(id)state cell:(id)cell level:(int)level
{
  v27 = 0;
  if ([style overridesObjectProperty:119 value:&v27])
  {
    [GQHParagraphStyle mapStyle:v27 style:a4 state:state];
  }

  if ([style hasValueForObjectProperty:119 value:&v27] && objc_msgSend(v27, "valueForIntProperty:", 29) == 4)
  {
    if ([cell isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(cell, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(cell, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(objc_msgSend(cell, "resultCell"), "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(cell, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(objc_msgSend(cell, "resultCell"), "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(cell, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(cell, "hasFormulaValue"))
    {
      v12 = &off_9D050;
LABEL_8:
      [a4 addAttribute:off_9CF30 value:*v12];
      goto LABEL_9;
    }

    if (([cell isMemberOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(cell, "isMemberOfClass:", objc_opt_class()) && objc_msgSend(objc_msgSend(cell, "resultCell"), "isMemberOfClass:", objc_opt_class()))
    {
      v12 = &off_9CFC8;
      goto LABEL_8;
    }
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 addAttribute:off_9CF30 value:off_9CFC8];
  }

  v26 = 0;
  if ([style hasValueForObjectProperty:118 value:&v26])
  {
    v25 = 0;
    if ([v26 hasValueForObjectProperty:47 value:&v25])
    {
      v24 = 0;
      if ([a4 getAttribute:off_9CEF0 trblValue:&v24])
      {
        v13 = v24;
        v14 = v24;
      }

      else
      {
        v14 = objc_alloc_init(GQHTrbl);
        v24 = v14;
      }

      left = [(GQHTrbl *)v14 left];
      [v25 left];
      [(GQHTrbl *)v14 setLeft:(fmaxf(v16 + left, 2.0) + (10 * level))];
      v17 = v24;
      right = [(GQHTrbl *)v24 right];
      [v25 right];
      [(GQHTrbl *)v17 setRight:fmaxf(v19 + right, 2.0)];
      v20 = v24;
      [v25 top];
      [(GQHTrbl *)v20 setTop:fmaxf(v21, 2.0)];
      v22 = v24;
      [v25 bottom];
      [(GQHTrbl *)v22 setBottom:fmaxf(v23, 2.0)];
      [a4 addAttribute:off_9CEF0 trblValue:v24];
    }
  }

  [a4 addAttribute:off_9CEE8 value:off_9CFE8];
  LOBYTE(v25) = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [style hasValueForBoolProperty:116 value:&v25] && v25 == 1)
  {
    [a4 addAttribute:off_9CF70 value:off_9CFB8];
  }

  else
  {
    [objc_msgSend(state "htmlDoc")];
  }
}

@end