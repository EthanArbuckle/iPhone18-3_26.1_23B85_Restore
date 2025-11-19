@interface PSConfig
@end

@implementation PSConfig

uint64_t __21___PSConfig__configs__block_invoke(uint64_t a1)
{
  v2 = [(_PSConfig *)*(a1 + 32) _loadPlistNamed:1 abortOnFailure:?];
  v3 = _configs_configs;
  _configs_configs = v2;

  v4 = [(_PSConfig *)*(a1 + 32) _loadPlistNamed:1 abortOnFailure:?];
  v5 = qword_1ED8BBB08;
  qword_1ED8BBB08 = v4;

  v6 = [(_PSConfig *)*(a1 + 32) _loadPlistNamed:1 abortOnFailure:?];
  v7 = qword_1ED8BBB10;
  qword_1ED8BBB10 = v6;

  qword_1ED8BBB18 = [(_PSConfig *)*(a1 + 32) _loadPlistNamed:1 abortOnFailure:?];

  return MEMORY[0x1EEE66BB8]();
}

@end