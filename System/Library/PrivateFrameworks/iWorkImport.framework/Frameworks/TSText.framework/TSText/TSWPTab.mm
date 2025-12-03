@interface TSWPTab
+ (id)displayStringFromTabLeader:(id)leader;
+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l isVertical:(BOOL)vertical;
+ (id)tab;
+ (id)tabLeaderFromDisplayString:(id)string;
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
+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l;
- (BOOL)isEqual:(id)equal;
- (NSString)leader;
- (TSWPTab)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)compareToPosition:(double)position;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSWPTab

+ (id)tabStopAlignmentStringTop
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Top", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringMiddle
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Middle", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringBottom
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Bottom", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringLeft
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Left", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringCenter
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Center", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringRight
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Right", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopAlignmentStringDecimal
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Decimal", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringNone
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"None", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringPoint
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @".....", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringDash
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"-----", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringUnderscore
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"_____", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopDisplayStringArrow
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"→→→", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringPoint
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @".", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringDash
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"-", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringUnderscore
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"_", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringArrow
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"→", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabStopLeaderStringArrowRTL
{
  v3 = sub_276E32640(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"←", &stru_28860A0F0, @"TSText");

  return v5;
}

+ (id)tabLeaderFromDisplayString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_tabStopDisplayStringPoint(self, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v8, v7);

  if (isEqualToString)
  {
    v12 = objc_msgSend_tabStopLeaderStringPoint(self, v10, v11);
LABEL_9:
    v28 = v12;
    goto LABEL_10;
  }

  v13 = objc_msgSend_tabStopDisplayStringDash(self, v10, v11);
  v15 = objc_msgSend_isEqualToString_(stringCopy, v14, v13);

  if (v15)
  {
    v12 = objc_msgSend_tabStopLeaderStringDash(self, v16, v17);
    goto LABEL_9;
  }

  v18 = objc_msgSend_tabStopDisplayStringUnderscore(self, v16, v17);
  v20 = objc_msgSend_isEqualToString_(stringCopy, v19, v18);

  if (v20)
  {
    v12 = objc_msgSend_tabStopLeaderStringUnderscore(self, v21, v22);
    goto LABEL_9;
  }

  v23 = objc_msgSend_tabStopDisplayStringArrow(self, v21, v22);
  v25 = objc_msgSend_isEqualToString_(stringCopy, v24, v23);

  if (v25)
  {
    v12 = objc_msgSend_tabStopLeaderStringArrow(self, v26, v27);
    goto LABEL_9;
  }

  v28 = 0;
LABEL_10:

  return v28;
}

+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l
{
  lCopy = l;
  stringCopy = string;
  v9 = objc_msgSend_tabStopAlignmentStringLeft(self, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v10, v9);

  if (isEqualToString)
  {
    if (lCopy)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_15;
  }

  v15 = objc_msgSend_tabStopAlignmentStringCenter(self, v12, v13);
  v17 = objc_msgSend_isEqualToString_(stringCopy, v16, v15);

  if (v17)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_15;
  }

  v20 = objc_msgSend_tabStopAlignmentStringRight(self, v18, v19);
  v22 = objc_msgSend_isEqualToString_(stringCopy, v21, v20);

  if (!v22)
  {
    v25 = objc_msgSend_tabStopAlignmentStringDecimal(self, v23, v24);
    v27 = objc_msgSend_isEqualToString_(stringCopy, v26, v25);

    if (v27)
    {
      v14 = 3;
      goto LABEL_15;
    }

    v30 = objc_msgSend_tabStopAlignmentStringTop(self, v28, v29);
    v32 = objc_msgSend_isEqualToString_(stringCopy, v31, v30);

    if ((v32 & 1) == 0)
    {
      v36 = objc_msgSend_tabStopAlignmentStringMiddle(self, v33, v34);
      v38 = objc_msgSend_isEqualToString_(stringCopy, v37, v36);

      if (v38)
      {
        goto LABEL_6;
      }

      v41 = objc_msgSend_tabStopAlignmentStringBottom(self, v39, v40);
      v43 = objc_msgSend_isEqualToString_(stringCopy, v42, v41);

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

  if (lCopy)
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

+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l isVertical:(BOOL)vertical
{
  v6 = &stru_28860A0F0;
  if (alignment <= 1)
  {
    if (alignment)
    {
      if (alignment == 1)
      {
        if (vertical)
        {
          objc_msgSend_tabStopAlignmentStringMiddle(self, a2, *&alignment, l);
        }

        else
        {
          objc_msgSend_tabStopAlignmentStringCenter(self, a2, *&alignment, l);
        }
        v6 = ;
      }

      goto LABEL_19;
    }

    if (vertical)
    {
      v6 = objc_msgSend_tabStopAlignmentStringTop(self, a2, *&alignment, l);
      goto LABEL_19;
    }

    if (l)
    {
LABEL_16:
      v6 = objc_msgSend_tabStopAlignmentStringRight(self, a2, *&alignment);
      goto LABEL_19;
    }

LABEL_18:
    v6 = objc_msgSend_tabStopAlignmentStringLeft(self, a2, *&alignment);
    goto LABEL_19;
  }

  if (alignment == 2)
  {
    if (vertical)
    {
      v6 = objc_msgSend_tabStopAlignmentStringBottom(self, a2, *&alignment, l);
      goto LABEL_19;
    }

    if (!l)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (alignment == 3)
  {
    v6 = objc_msgSend_tabStopAlignmentStringDecimal(self, a2, *&alignment, l, vertical);
  }

LABEL_19:

  return v6;
}

+ (id)displayStringFromTabLeader:(id)leader
{
  leaderCopy = leader;
  v7 = objc_msgSend_tabStopDisplayStringNone(self, v5, v6);
  v10 = objc_msgSend_tabStopLeaderStringPoint(self, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(leaderCopy, v11, v10);

  if (isEqualToString)
  {
    v15 = objc_msgSend_tabStopDisplayStringPoint(self, v13, v14);
  }

  else
  {
    v16 = objc_msgSend_tabStopLeaderStringDash(self, v13, v14);
    v18 = objc_msgSend_isEqualToString_(leaderCopy, v17, v16);

    if (v18)
    {
      v15 = objc_msgSend_tabStopDisplayStringDash(self, v19, v20);
    }

    else
    {
      v21 = objc_msgSend_tabStopLeaderStringUnderscore(self, v19, v20);
      v23 = objc_msgSend_isEqualToString_(leaderCopy, v22, v21);

      if (v23)
      {
        v15 = objc_msgSend_tabStopDisplayStringUnderscore(self, v24, v25);
      }

      else
      {
        v26 = objc_msgSend_tabStopLeaderStringArrow(self, v24, v25);
        v28 = objc_msgSend_isEqualToString_(leaderCopy, v27, v26);

        if (!v28)
        {
          goto LABEL_10;
        }

        v15 = objc_msgSend_tabStopDisplayStringArrow(self, v29, v30);
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

- (TSWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader
{
  leaderCopy = leader;
  v16.receiver = self;
  v16.super_class = TSWPTab;
  v9 = [(TSWPTab *)&v16 init];
  v12 = v9;
  if (v9)
  {
    v9->_position = position;
    v9->_alignment = alignment;
    v13 = objc_msgSend_copy(leaderCopy, v10, v11);
    leader = v12->_leader;
    v12->_leader = v13;
  }

  return v12;
}

- (TSWPTab)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v8 = *(archive + 4);
  if ((v8 & 2) != 0)
  {
    v9 = *(archive + 8);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(archive + 9);
  if (v8)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
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
    *(archive + 4) |= 2u;
    *(archive + 8) = v9;
  }

  alignment = self->_alignment;
  if (alignment)
  {
    *(archive + 4) |= 4u;
    *(archive + 9) = alignment;
  }

  leader = self->_leader;
  if (leader)
  {
    v12 = objc_msgSend_UTF8String(leader, v6, v7);
    sub_276D4E680(archive, v12);
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (int64_t)compareToPosition:(double)position
{
  position = self->_position;
  if (position < position)
  {
    return -1;
  }

  else
  {
    return position > position;
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v7 = compareCopy;
  if (compareCopy)
  {
    objc_msgSend_position(compareCopy, v5, v6);
    v10 = objc_msgSend_compareToPosition_(self, v8, v9);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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