@interface TPSSearchQueryXPCInterfaceBuilder
+ (id)searchQueryServerInterface;
+ (void)configure:(id)a3;
@end

@implementation TPSSearchQueryXPCInterfaceBuilder

+ (id)searchQueryServerInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3F52648];
  [a1 configure:v3];

  return v3;
}

+ (void)configure:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v9 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v4 setClasses:v9 forSelector:sel_performQuery_completion_ argumentIndex:0 ofReply:0];
  [v4 setClasses:v8 forSelector:sel_performQuery_completion_ argumentIndex:0 ofReply:1];
}

@end