@interface TSWPTab
+ (id)displayStringFromTabLeader:(id)a3;
+ (id)stringFromTabAlignment:(int)a3 isRTL:(BOOL)a4 isVertical:(BOOL)a5;
+ (id)tab;
+ (id)tabLeaderFromDisplayString:(id)a3;
+ (id)tabStopAlignmentStringBottom;
+ (id)tabStopAlignmentStringCenter;
+ (id)tabStopAlignmentStringDecimal;
+ (id)tabStopAlignmentStringLeft;
+ (id)tabStopAlignmentStringMiddle;
+ (id)tabStopAlignmentStringRight;
+ (id)tabStopAlignmentStringTop;
+ (id)tabStopDisplayStringArrow;
+ (id)tabStopDisplayStringDash;
+ (id)tabStopDisplayStringNone;
+ (id)tabStopDisplayStringPoint;
+ (id)tabStopDisplayStringUnderscore;
+ (id)tabStopLeaderStringArrow;
+ (id)tabStopLeaderStringArrowRTL;
+ (id)tabStopLeaderStringDash;
+ (id)tabStopLeaderStringPoint;
+ (id)tabStopLeaderStringUnderscore;
+ (int)tabAlignmentFromString:(id)a3 isRTL:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)leader;
- (TSWPTab)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSWPTab)initWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (int64_t)compareToPosition:(double)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSWPTab

+ (id)tabStopAlignmentStringTop
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Top", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringMiddle
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Middle", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringBottom
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Bottom", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringLeft
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Left", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringCenter
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Center", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringRight
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Right", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringDecimal
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Decimal", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringNone
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"None", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringPoint
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @".....", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringDash
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"-----", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringUnderscore
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"_____", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringArrow
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"→→→", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringPoint
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @".", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringDash
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"-", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringUnderscore
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"_", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringArrow
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"→", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringArrowRTL
{
  v3 = sub_276E32640(a1, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"←", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabLeaderFromDisplayString:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tabStopDisplayStringPoint(a1, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v8, v7);

  if (isEqualToString)
  {
    v12 = objc_msgSend_tabStopLeaderStringPoint(a1, v10, v11);
LABEL_9:
    v28 = v12;
    goto LABEL_10;
  }

  v13 = objc_msgSend_tabStopDisplayStringDash(a1, v10, v11);
  v15 = objc_msgSend_isEqualToString_(v4, v14, v13);

  if (v15)
  {
    v12 = objc_msgSend_tabStopLeaderStringDash(a1, v16, v17);
    goto LABEL_9;
  }

  v18 = objc_msgSend_tabStopDisplayStringUnderscore(a1, v16, v17);
  v20 = objc_msgSend_isEqualToString_(v4, v19, v18);

  if (v20)
  {
    v12 = objc_msgSend_tabStopLeaderStringUnderscore(a1, v21, v22);
    goto LABEL_9;
  }

  v23 = objc_msgSend_tabStopDisplayStringArrow(a1, v21, v22);
  v25 = objc_msgSend_isEqualToString_(v4, v24, v23);

  if (v25)
  {
    v12 = objc_msgSend_tabStopLeaderStringArrow(a1, v26, v27);
    goto LABEL_9;
  }

  v28 = 0;
LABEL_10:

  return v28;
}

+ (int)tabAlignmentFromString:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = objc_msgSend_tabStopAlignmentStringLeft(a1, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v10, v9);

  if (isEqualToString)
  {
    if (v4)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_15;
  }

  v15 = objc_msgSend_tabStopAlignmentStringCenter(a1, v12, v13);
  v17 = objc_msgSend_isEqualToString_(v6, v16, v15);

  if (v17)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_15;
  }

  v20 = objc_msgSend_tabStopAlignmentStringRight(a1, v18, v19);
  v22 = objc_msgSend_isEqualToString_(v6, v21, v20);

  if (!v22)
  {
    v25 = objc_msgSend_tabStopAlignmentStringDecimal(a1, v23, v24);
    v27 = objc_msgSend_isEqualToString_(v6, v26, v25);

    if (v27)
    {
      v14 = 3;
      goto LABEL_15;
    }

    v30 = objc_msgSend_tabStopAlignmentStringTop(a1, v28, v29);
    v32 = objc_msgSend_isEqualToString_(v6, v31, v30);

    if ((v32 & 1) == 0)
    {
      v36 = objc_msgSend_tabStopAlignmentStringMiddle(a1, v33, v34);
      v38 = objc_msgSend_isEqualToString_(v6, v37, v36);

      if (v38)
      {
        goto LABEL_6;
      }

      v41 = objc_msgSend_tabStopAlignmentStringBottom(a1, v39, v40);
      v43 = objc_msgSend_isEqualToString_(v6, v42, v41);

      if (v43)
      {
        v14 = 2;
        goto LABEL_15;
      }

      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "+[TSWPTab tabAlignmentFromString:isRTL:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTabs.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 160, 0, "Unrecognized tab alignment string. Returning kTabAlignmentLeft by default.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }

    v14 = 0;
    goto LABEL_15;
  }

  if (v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

LABEL_15:

  return v14;
}

+ (id)stringFromTabAlignment:(int)a3 isRTL:(BOOL)a4 isVertical:(BOOL)a5
{
  v6 = &stru_28860A0F0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a5)
        {
          objc_msgSend_tabStopAlignmentStringMiddle(a1, a2, *&a3, a4);
        }

        else
        {
          objc_msgSend_tabStopAlignmentStringCenter(a1, a2, *&a3, a4);
        }
        v6 = ;
      }

      goto LABEL_19;
    }

    if (a5)
    {
      v6 = objc_msgSend_tabStopAlignmentStringTop(a1, a2, *&a3, a4);
      goto LABEL_19;
    }

    if (a4)
    {
LABEL_16:
      v6 = objc_msgSend_tabStopAlignmentStringRight(a1, a2, *&a3);
      goto LABEL_19;
    }

LABEL_18:
    v6 = objc_msgSend_tabStopAlignmentStringLeft(a1, a2, *&a3);
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    if (a5)
    {
      v6 = objc_msgSend_tabStopAlignmentStringBottom(a1, a2, *&a3, a4);
      goto LABEL_19;
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a3 == 3)
  {
    v6 = objc_msgSend_tabStopAlignmentStringDecimal(a1, a2, *&a3, a4, a5);
  }

LABEL_19:

  return v6;
}

+ (id)displayStringFromTabLeader:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tabStopDisplayStringNone(a1, v5, v6);
  v10 = objc_msgSend_tabStopLeaderStringPoint(a1, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v11, v10);

  if (isEqualToString)
  {
    v15 = objc_msgSend_tabStopDisplayStringPoint(a1, v13, v14);
  }

  else
  {
    v16 = objc_msgSend_tabStopLeaderStringDash(a1, v13, v14);
    v18 = objc_msgSend_isEqualToString_(v4, v17, v16);

    if (v18)
    {
      v15 = objc_msgSend_tabStopDisplayStringDash(a1, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_tabStopLeaderStringUnderscore(a1, v19, v20);
      v23 = objc_msgSend_isEqualToString_(v4, v22, v21);

      if (v23)
      {
        v15 = objc_msgSend_tabStopDisplayStringUnderscore(a1, v24, v25);
      }

      else
      {
        v26 = objc_msgSend_tabStopLeaderStringArrow(a1, v24, v25);
        v28 = objc_msgSend_isEqualToString_(v4, v27, v26);

        if (!v28)
        {
          goto LABEL_10;
        }

        v15 = objc_msgSend_tabStopDisplayStringArrow(a1, v29, v30);
      }
    }
  }

  v31 = v15;

  v7 = v31;
LABEL_10:

  return v7;
}

+ (id)tab
{
  v2 = objc_alloc_init(TSWPTab);

  return v2;
}

- (TSWPTab)initWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = TSWPTab;
  v9 = [(TSWPTab *)&v16 init];
  v12 = v9;
  if (v9)
  {
    v9->_position = a3;
    v9->_alignment = a4;
    v13 = objc_msgSend_copy(v8, v10, v11);
    leader = v12->_leader;
    v12->_leader = v13;
  }

  return v12;
}

- (TSWPTab)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v8 = *(a3 + 4);
  if ((v8 & 2) != 0)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(a3 + 9);
  if (v8)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    v12 = objc_msgSend_initWithPosition_alignment_leader_(self, v15, v10 & (v8 << 29 >> 31), v11, v9);
  }

  else
  {
    v11 = 0;
    v12 = objc_msgSend_initWithPosition_alignment_leader_(self, v6, v10 & (v8 << 29 >> 31), 0, v9);
  }

  v16 = v12;

  return v16;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v28 = a4;
  position = self->_position;
  if (position != 0.0)
  {
    if ((*&position & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (position > 0.0 && position > 3.40282347e38)
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPTab saveToArchive:archiver:]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTabs.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 242, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
        v20 = 2139095039;
      }

      else
      {
        if (position >= 0.0 || position >= -3.40282347e38)
        {
          goto LABEL_7;
        }

        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPTab saveToArchive:archiver:]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTabs.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 242, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
        v20 = -8388609;
      }

      v9 = *&v20;
      goto LABEL_8;
    }

LABEL_7:
    v9 = position;
LABEL_8:
    *(a3 + 4) |= 2u;
    *(a3 + 8) = v9;
  }

  alignment = self->_alignment;
  if (alignment)
  {
    *(a3 + 4) |= 4u;
    *(a3 + 9) = alignment;
  }

  leader = self->_leader;
  if (leader)
  {
    v12 = objc_msgSend_UTF8String(leader, v6, v7);
    sub_276D4E680(a3, v12);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  position = self->_position;
  alignment = self->_alignment;
  leader = self->_leader;

  return objc_msgSend_initWithPosition_alignment_leader_(v4, v5, alignment, leader, position);
}

- (NSString)leader
{
  if (self->_leader)
  {
    return self->_leader;
  }

  else
  {
    return @" ";
  }
}

- (int64_t)compareToPosition:(double)a3
{
  position = self->_position;
  if (position < a3)
  {
    return -1;
  }

  else
  {
    return position > a3;
  }
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    objc_msgSend_position(v4, v5, v6);
    v10 = objc_msgSend_compareToPosition_(self, v8, v9);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  if (v5 && ((position = self->_position, objc_msgSend_position(v5, v6, v7), position == v12) || vabdd_f64(position, v12) < fabs(v12 * 0.000000999999997)) && (alignment = self->_alignment, alignment == objc_msgSend_alignment(v8, v10, v11)))
  {
    leader = self->_leader;
    v17 = objc_msgSend_leader(v8, v14, v15);
    v18 = leader;
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = @" ";
    }

    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = @" ";
    }

    v21 = v17;
    isEqualToString = objc_msgSend_isEqualToString_(v19, v22, v20);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: pos=%f align=%d; leader='%@'>", v5, *&self->_position, self->_alignment, self->_leader);;

  return v7;
}

@end