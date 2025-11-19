@interface UITextDropProposal
- (UITextDropProposal)initWithDropOperation:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UITextDropProposal

- (UITextDropProposal)initWithDropOperation:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = UITextDropProposal;
  v3 = [(UIDropProposal *)&v6 initWithDropOperation:a3];
  v4 = v3;
  if (v3)
  {
    [(UIDropProposal *)v3 setPrecise:1];
    [(UITextDropProposal *)v4 setDropAction:0];
    [(UITextDropProposal *)v4 setUseFastSameViewOperations:1];
    [(UITextDropProposal *)v4 setDropProgressMode:0];
    [(UITextDropProposal *)v4 setDropPerformer:0];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UITextDropProposal;
  v4 = [(UIDropProposal *)&v6 copyWithZone:a3];
  [v4 setDropAction:{-[UITextDropProposal dropAction](self, "dropAction")}];
  [v4 setUseFastSameViewOperations:{-[UITextDropProposal useFastSameViewOperations](self, "useFastSameViewOperations")}];
  [v4 setDropProgressMode:{-[UITextDropProposal dropProgressMode](self, "dropProgressMode")}];
  [v4 setDropPerformer:{-[UITextDropProposal dropPerformer](self, "dropPerformer")}];
  return v4;
}

@end