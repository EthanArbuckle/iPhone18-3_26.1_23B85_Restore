@interface GQHTableCellStyle
+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 cell:(id)a6 level:(int)a7;
@end

@implementation GQHTableCellStyle

+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 cell:(id)a6 level:(int)a7
{
  v27 = 0;
  if ([a3 overridesObjectProperty:119 value:&v27])
  {
    [GQHParagraphStyle mapStyle:v27 style:a4 state:a5];
  }

  if ([a3 hasValueForObjectProperty:119 value:&v27] && objc_msgSend(v27, "valueForIntProperty:", 29) == 4)
  {
    if ([a6 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(a6, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a6, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(objc_msgSend(a6, "resultCell"), "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a6, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(objc_msgSend(a6, "resultCell"), "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a6, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(a6, "hasFormulaValue"))
    {
      v12 = &off_9D050;
LABEL_8:
      [a4 addAttribute:off_9CF30 value:*v12];
      goto LABEL_9;
    }

    if (([a6 isMemberOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(a6, "isMemberOfClass:", objc_opt_class()) && objc_msgSend(objc_msgSend(a6, "resultCell"), "isMemberOfClass:", objc_opt_class()))
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
  if ([a3 hasValueForObjectProperty:118 value:&v26])
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

      v15 = [(GQHTrbl *)v14 left];
      [v25 left];
      [(GQHTrbl *)v14 setLeft:(fmaxf(v16 + v15, 2.0) + (10 * a7))];
      v17 = v24;
      v18 = [(GQHTrbl *)v24 right];
      [v25 right];
      [(GQHTrbl *)v17 setRight:fmaxf(v19 + v18, 2.0)];
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 hasValueForBoolProperty:116 value:&v25] && v25 == 1)
  {
    [a4 addAttribute:off_9CF70 value:off_9CFB8];
  }

  else
  {
    [objc_msgSend(a5 "htmlDoc")];
  }
}

@end