@interface BRCClassesConflictLoserEtags
@end

@implementation BRCClassesConflictLoserEtags

uint64_t ___BRCClassesConflictLoserEtags_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  _BRCClassesConflictLoserEtags_allowedClasses = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end