@interface TBTileMO
+ (id)generateNewTileObjectFromMOC:(id)a3;
+ (void)removeAllTilesInMOC:(id)a3;
+ (void)removeTilesUsingPredicate:(id)a3 moc:(id)a4;
@end

@implementation TBTileMO

+ (id)generateNewTileObjectFromMOC:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__TBTileMO_generateNewTileObjectFromMOC___block_invoke;
  v8[3] = &unk_2789C7350;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  objc_autoreleasePoolPop(v4);

  return v6;
}

void __41__TBTileMO_generateNewTileObjectFromMOC___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE408];
  v6 = +[TBTileMO entityName];
  v3 = [v2 insertNewObjectForEntityForName:v6 inManagedObjectContext:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)removeTilesUsingPredicate:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 fetchRequest];
  [v9 setPredicate:v6];
  v10 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v9];
  [v10 setResultType:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__TBTileMO_removeTilesUsingPredicate_moc___block_invoke;
  v14[3] = &unk_2789C6C70;
  v11 = v7;
  v15 = v11;
  v16 = v10;
  v12 = v6;
  v17 = v12;
  v13 = v10;
  [v11 performBlockAndWait:v14];

  objc_autoreleasePoolPop(v8);
}

void __42__TBTileMO_removeTilesUsingPredicate_moc___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  v9 = 0;
  v5 = [v3 executeRequest:v4 error:&v9];
  v6 = v9;
  v7 = [v5 result];
  v8 = [v7 unsignedIntegerValue];

  NSLog(&cfstr_SRemovedLuTile.isa, "+[TBTileMO removeTilesUsingPredicate:moc:]_block_invoke", v8, a1[6]);
  objc_autoreleasePoolPop(v2);
}

+ (void)removeAllTilesInMOC:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBE360]);
  v6 = +[TBTileMO fetchRequest];
  v7 = [v5 initWithFetchRequest:v6];

  [v7 setResultType:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__TBTileMO_removeAllTilesInMOC___block_invoke;
  v10[3] = &unk_2789C6608;
  v8 = v3;
  v11 = v8;
  v12 = v7;
  v9 = v7;
  [v8 performBlockAndWait:v10];

  objc_autoreleasePoolPop(v4);
}

void __32__TBTileMO_removeAllTilesInMOC___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [v3 executeRequest:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_SError.isa, "+[TBTileMO removeAllTilesInMOC:]_block_invoke", v6);
  }

  else
  {
    v8 = [v5 result];
    v9 = [v8 unsignedIntegerValue];

    NSLog(&cfstr_SRemovedLuTile_0.isa, "+[TBTileMO removeAllTilesInMOC:]_block_invoke", v9);
  }

  objc_autoreleasePoolPop(v2);
}

@end