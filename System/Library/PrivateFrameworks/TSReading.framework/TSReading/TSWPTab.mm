@interface TSWPTab
+ (id)displayStringFromTabLeader:(id)leader;
+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l;
+ (id)tab;
+ (id)tabLeaderFromDisplayString:(id)string;
+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)leader;
- (TSWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)compareToPosition:(double)position;
- (void)dealloc;
@end

@implementation TSWPTab

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _kTabStopAlignmentStringLeft = [TSWPBundle() localizedStringForKey:@"Left" value:&stru_287D36338 table:@"TSText"];
    _kTabStopAlignmentStringCenter = [TSWPBundle() localizedStringForKey:@"Center" value:&stru_287D36338 table:@"TSText"];
    _kTabStopAlignmentStringRight = [TSWPBundle() localizedStringForKey:@"Right" value:&stru_287D36338 table:@"TSText"];
    _kTabStopAlignmentStringDecimal = [TSWPBundle() localizedStringForKey:@"Decimal" value:&stru_287D36338 table:@"TSText"];
    _kTabStopDisplayStringNone = [TSWPBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];
    _kTabStopDisplayStringPoint = [TSWPBundle() localizedStringForKey:@"....." value:&stru_287D36338 table:@"TSText"];
    _kTabStopDisplayStringDash = [TSWPBundle() localizedStringForKey:@"-----" value:&stru_287D36338 table:@"TSText"];
    _kTabStopDisplayStringUnderscore = [TSWPBundle() localizedStringForKey:@"_____" value:&stru_287D36338 table:@"TSText"];
    _kTabStopDisplayStringArrow = [TSWPBundle() localizedStringForKey:@"→→→" value:&stru_287D36338 table:@"TSText"];
    _kTabStopLeaderStringPoint = [TSWPBundle() localizedStringForKey:@"." value:&stru_287D36338 table:@"TSText"];
    _kTabStopLeaderStringDash = [TSWPBundle() localizedStringForKey:@"-" value:&stru_287D36338 table:@"TSText"];
    _kTabStopLeaderStringUnderscore = [TSWPBundle() localizedStringForKey:@"_" value:&stru_287D36338 table:@"TSText"];
    _kTabStopLeaderStringArrow = [TSWPBundle() localizedStringForKey:@"→" value:&stru_287D36338 table:@"TSText"];
    _kTabStopLeaderStringArrowRTL = [TSWPBundle() localizedStringForKey:@"←" value:&stru_287D36338 table:@"TSText"];
  }
}

+ (id)tabLeaderFromDisplayString:(id)string
{
  if ([string isEqualToString:_kTabStopDisplayStringPoint])
  {
    return _kTabStopLeaderStringPoint;
  }

  if ([string isEqualToString:_kTabStopDisplayStringDash])
  {
    return _kTabStopLeaderStringDash;
  }

  if ([string isEqualToString:_kTabStopDisplayStringUnderscore])
  {
    return _kTabStopLeaderStringUnderscore;
  }

  if ([string isEqualToString:_kTabStopDisplayStringArrow])
  {
    return _kTabStopLeaderStringArrow;
  }

  return 0;
}

+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l
{
  lCopy = l;
  if ([string isEqualToString:_kTabStopAlignmentStringLeft])
  {
    if (lCopy)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if ([string isEqualToString:_kTabStopAlignmentStringCenter])
  {
    return 1;
  }

  else if ([string isEqualToString:_kTabStopAlignmentStringRight])
  {
    if (lCopy)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else if ([string isEqualToString:_kTabStopAlignmentStringDecimal])
  {
    return 3;
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPTab tabAlignmentFromString:isRTL:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTabs.mm"), 207, @"Unrecognized tab alignment string. Returning kTabAlignmentLeft by default."}];
    return 0;
  }
}

+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l
{
  result = &stru_287D36338;
  if (alignment <= 1)
  {
    if (alignment)
    {
      if (alignment == 1)
      {
        return _kTabStopAlignmentStringCenter;
      }

      return result;
    }

    v5 = &_kTabStopAlignmentStringRight;
    v6 = &_kTabStopAlignmentStringLeft;
    goto LABEL_11;
  }

  if (alignment == 2)
  {
    v5 = &_kTabStopAlignmentStringLeft;
    v6 = &_kTabStopAlignmentStringRight;
LABEL_11:
    if (!l)
    {
      v5 = v6;
    }

    return *v5;
  }

  if (alignment == 3)
  {
    return _kTabStopAlignmentStringDecimal;
  }

  return result;
}

+ (id)displayStringFromTabLeader:(id)leader
{
  v4 = _kTabStopDisplayStringNone;
  if ([leader isEqualToString:_kTabStopLeaderStringPoint])
  {
    return _kTabStopDisplayStringPoint;
  }

  if ([leader isEqualToString:_kTabStopLeaderStringDash])
  {
    return _kTabStopDisplayStringDash;
  }

  if ([leader isEqualToString:_kTabStopLeaderStringUnderscore])
  {
    return _kTabStopDisplayStringUnderscore;
  }

  if ([leader isEqualToString:_kTabStopLeaderStringArrow])
  {
    return _kTabStopDisplayStringArrow;
  }

  return v4;
}

+ (id)tab
{
  v2 = objc_alloc_init(TSWPTab);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTab;
  [(TSWPTab *)&v3 dealloc];
}

- (TSWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader
{
  v11.receiver = self;
  v11.super_class = TSWPTab;
  v8 = [(TSWPTab *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_position = position;
    v8->_alignment = alignment;
    v8->_leader = [leader copy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  position = self->_position;
  alignment = self->_alignment;
  leader = self->_leader;

  return [v4 initWithPosition:alignment alignment:leader leader:position];
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
  if (!compare)
  {
    return -1;
  }

  [compare position];

  return [(TSWPTab *)self compareToPosition:?];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  position = self->_position;
  [v4 position];
  if (vabdd_f64(position, v7) > 0.0000999999975)
  {
    return 0;
  }

  alignment = self->_alignment;
  if (alignment != [v5 alignment])
  {
    return 0;
  }

  leader = self->_leader;
  leader = [v5 leader];
  if (leader)
  {
    v11 = leader;
  }

  else
  {
    v11 = @" ";
  }

  if (leader)
  {
    v12 = leader;
  }

  else
  {
    v12 = @" ";
  }

  return [(__CFString *)v11 isEqualToString:v12];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: pos=%f; align=%d; leader=%@>", NSStringFromClass(v4), *&self->_position, self->_alignment, self->_leader];
}

@end