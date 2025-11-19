@interface NSTextTableBlock
+ (void)initialize;
- (CGRect)boundsRectForContentRect:(CGRect)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterRange:(_NSRange)a6;
- (CGRect)rectForLayoutAtPoint:(CGPoint)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterRange:(_NSRange)a6;
- (NSTextTableBlock)init;
- (NSTextTableBlock)initWithCoder:(id)a3;
- (NSTextTableBlock)initWithTable:(NSTextTable *)table startingRow:(NSInteger)row rowSpan:(NSInteger)rowSpan startingColumn:(NSInteger)col columnSpan:(NSInteger)colSpan;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSTextTableBlock

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    [NSTextTableBlock setVersion:1];
    __NSTextTableBlockClass = a1;
  }
}

- (NSTextTableBlock)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Non-designated initializer called for NSTextTableBlock"];
  v3 = objc_alloc_init(NSTextTable);

  return [(NSTextTableBlock *)self initWithTable:v3 startingRow:0 rowSpan:9 startingColumn:9 columnSpan:0];
}

- (NSTextTableBlock)initWithTable:(NSTextTable *)table startingRow:(NSInteger)row rowSpan:(NSInteger)rowSpan startingColumn:(NSInteger)col columnSpan:(NSInteger)colSpan
{
  v15.receiver = self;
  v15.super_class = NSTextTableBlock;
  v12 = [(NSTextBlock *)&v15 init];
  v13 = v12;
  if (v12)
  {
    if (table)
    {
      v12->_table = table;
      v13->_rowNum = row;
      v13->_colNum = col;
      v13->_rowSpan = rowSpan;
      v13->_colSpan = colSpan;
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextTableBlock;
  [(NSTextBlock *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = NSTextTableBlock;
  [(NSTextBlock *)&v10 encodeWithCoder:?];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:self->_table forKey:@"NSTable"];
    [a3 encodeInteger:self->_rowNum forKey:@"NSRowNum"];
    [a3 encodeInteger:self->_colNum forKey:@"NSColNum"];
    [a3 encodeInteger:self->_rowSpan forKey:@"NSRowSpan"];
    [a3 encodeInteger:self->_colSpan forKey:@"NSColSpan"];
  }

  else
  {
    rowNum = self->_rowNum;
    colNum = self->_colNum;
    v9 = rowNum;
    rowSpan = self->_rowSpan;
    colSpan = self->_colSpan;
    [a3 encodeValuesOfObjCTypes:{"@IIII", &self->_table, &v9, &colNum, &rowSpan, &colSpan}];
  }
}

- (NSTextTableBlock)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = NSTextTableBlock;
  v4 = [(NSTextBlock *)&v12 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      v4->_table = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSTable"];
      v4->_rowNum = [a3 decodeIntegerForKey:@"NSRowNum"];
      v4->_colNum = [a3 decodeIntegerForKey:@"NSColNum"];
      v4->_rowSpan = [a3 decodeIntegerForKey:@"NSRowSpan"];
      v4->_colSpan = [a3 decodeIntegerForKey:@"NSColSpan"];
    }

    else
    {
      v5 = [a3 versionForClassName:@"NSTextTableBlock"];
      if (v5 == 1)
      {
        v11 = 0;
        v10 = 0;
        v9 = 0;
        [a3 decodeValuesOfObjCTypes:{"@IIII", &v4->_table, &v11, &v10, &v9 + 4, &v9}];
        v4->_rowNum = v11;
        v4->_colNum = v10;
        v4->_rowSpan = HIDWORD(v9);
        v4->_colSpan = v9;
      }

      else
      {
        v6 = v5;
        v7 = _NSFullMethodName();
        NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v7, 1, v6);

        return 0;
      }
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithTable:startingRow:rowSpan:startingColumn:columnSpan:", self->_table, self->_rowNum, self->_rowSpan, self->_colNum, self->_colSpan}];
  [v4 _takeValuesFromTextBlock:self];
  return v4;
}

- (CGRect)rectForLayoutAtPoint:(CGPoint)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterRange:(_NSRange)a6
{
  [(NSTextTable *)self->_table rectForBlock:self layoutAtPoint:a5 inRect:a6.location textContainer:a6.length characterRange:a3.x, a3.y, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)boundsRectForContentRect:(CGRect)a3 inRect:(CGRect)a4 textContainer:(id)a5 characterRange:(_NSRange)a6
{
  [(NSTextTable *)self->_table boundsRectForBlock:self contentRect:a5 inRect:a6.location textContainer:a6.length characterRange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end