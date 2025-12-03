@interface PMLTrainingDatabaseMigrations
+ (id)mockMigrationsByAddingQueries:(id)queries;
- (PMLTrainingDatabaseMigrations)init;
- (PMLTrainingDatabaseMigrations)initWithMigrations:(id)migrations;
- (unsigned)maxVersion;
@end

@implementation PMLTrainingDatabaseMigrations

- (unsigned)maxVersion
{
  migrations = [(PMLTrainingDatabaseMigrations *)self migrations];
  allKeys = [migrations allKeys];

  v4 = [allKeys valueForKeyPath:@"@max.unsignedIntValue"];
  unsignedIntValue = [v4 unsignedIntValue];

  return unsignedIntValue;
}

- (PMLTrainingDatabaseMigrations)init
{
  v13[26] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_287357F20;
  v12[1] = &unk_287357F38;
  v13[0] = &unk_287358268;
  v13[1] = &unk_287358280;
  v12[2] = &unk_287357F50;
  v12[3] = &unk_287357F68;
  v13[2] = &unk_287358298;
  v13[3] = &unk_2873582B0;
  v12[4] = &unk_287357F80;
  v12[5] = &unk_287357F98;
  v13[4] = &unk_2873582C8;
  v13[5] = &unk_2873582E0;
  v12[6] = &unk_287357FB0;
  v12[7] = &unk_287357FC8;
  v13[6] = &unk_2873582F8;
  v13[7] = &unk_287358310;
  v12[8] = &unk_287357FE0;
  v12[9] = &unk_287357FF8;
  v13[8] = &unk_287358328;
  v13[9] = &unk_287358340;
  v13[10] = &unk_287358358;
  v12[10] = &unk_287358010;
  v12[11] = &unk_287358028;
  v3 = MEMORY[0x277CBEAC0];
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:migrateSessionsToFloats];
  v5 = [v3 dictionaryWithObject:v4 forKey:@"migrationFunction"];
  v11 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v13[11] = v6;
  v13[12] = &unk_287358370;
  v12[12] = &unk_287358040;
  v12[13] = &unk_287358058;
  v13[13] = &unk_287358388;
  v13[14] = &unk_2873583A0;
  v12[14] = &unk_287358070;
  v12[15] = &unk_287358088;
  v13[15] = &unk_2873583B8;
  v13[16] = &unk_2873583D0;
  v12[16] = &unk_2873580A0;
  v12[17] = &unk_2873580B8;
  v13[17] = &unk_2873583E8;
  v13[18] = &unk_287358400;
  v12[18] = &unk_2873580D0;
  v12[19] = &unk_2873580E8;
  v13[19] = &unk_287358418;
  v13[20] = &unk_287358430;
  v12[20] = &unk_287358100;
  v12[21] = &unk_287358118;
  v13[21] = &unk_287358448;
  v13[22] = &unk_287358460;
  v12[22] = &unk_287358130;
  v12[23] = &unk_287358148;
  v13[23] = &unk_287358478;
  v13[24] = &unk_287358490;
  v12[24] = &unk_287358160;
  v12[25] = &unk_287358178;
  v13[25] = &unk_2873584A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:26];
  v8 = [(PMLTrainingDatabaseMigrations *)self initWithMigrations:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (PMLTrainingDatabaseMigrations)initWithMigrations:(id)migrations
{
  migrationsCopy = migrations;
  v9.receiver = self;
  v9.super_class = PMLTrainingDatabaseMigrations;
  v6 = [(PMLTrainingDatabaseMigrations *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_migrations, migrations);
  }

  return v7;
}

+ (id)mockMigrationsByAddingQueries:(id)queries
{
  queriesCopy = queries;
  v5 = objc_opt_new();
  migrations = [v5 migrations];
  v7 = [migrations mutableCopy];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "maxVersion") + 1}];
  [v7 setObject:queriesCopy forKeyedSubscript:v8];

  v9 = [[self alloc] initWithMigrations:v7];

  return v9;
}

@end