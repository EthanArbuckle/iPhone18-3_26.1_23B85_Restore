@interface TextViewWrapper.Coordinator
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
@end

@implementation TextViewWrapper.Coordinator

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = sub_220DBE2E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE2D0();
  v13 = a3;
  v14 = self;
  v15 = sub_220CF0D10(v13, v12);

  (*(v9 + 8))(v12, v8);
  return v15 & 1;
}

@end