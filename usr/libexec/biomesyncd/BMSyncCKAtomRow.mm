@interface BMSyncCKAtomRow
- (BMSyncCKAtomRow)initWithFMResultSet:(id)a3;
- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 referenceAtomBatchFilename:(id)a8 atomBatchFileIndex:(unint64_t)a9;
- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 segmentName:(id)a8 segmentOffset:(unint64_t)a9;
- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 valueVersion:(int64_t)a8 valueData:(id)a9;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation BMSyncCKAtomRow

- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 segmentName:(id)a8 segmentOffset:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v23 = a6;
  v22 = a8;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049A5C();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  sub_100049AD0();
LABEL_3:
  v24.receiver = self;
  v24.super_class = BMSyncCKAtomRow;
  v19 = [(BMSyncCKAtomRow *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_location, a3);
    objc_storeStrong(&v20->_timestamp, a4);
    objc_storeStrong(&v20->_referenceLocation, a5);
    objc_storeStrong(&v20->_causalReference, a6);
    v20->_type = a7;
    objc_storeStrong(&v20->_segmentName, a8);
    v20->_segmentOffset = a9;
  }

  return v20;
}

- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 valueVersion:(int64_t)a8 valueData:(id)a9
{
  v14 = a3;
  v15 = a4;
  v24 = a5;
  v16 = a6;
  v17 = a9;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049B44();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  sub_100049BB8();
LABEL_3:
  v25.receiver = self;
  v25.super_class = BMSyncCKAtomRow;
  v18 = [(BMSyncCKAtomRow *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_location, a3);
    objc_storeStrong(&v19->_timestamp, a4);
    objc_storeStrong(&v19->_referenceLocation, a5);
    objc_storeStrong(&v19->_causalReference, a6);
    v19->_type = a7;
    v19->_valueVersion = a8;
    objc_storeStrong(&v19->_valueData, a9);
  }

  return v19;
}

- (BMSyncCKAtomRow)initWithLocation:(id)a3 timestamp:(id)a4 referenceLocation:(id)a5 causalReference:(id)a6 type:(unint64_t)a7 referenceAtomBatchFilename:(id)a8 atomBatchFileIndex:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v23 = a6;
  v22 = a8;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049C2C();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  sub_100049CA0();
LABEL_3:
  v24.receiver = self;
  v24.super_class = BMSyncCKAtomRow;
  v19 = [(BMSyncCKAtomRow *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_location, a3);
    objc_storeStrong(&v20->_timestamp, a4);
    objc_storeStrong(&v20->_referenceLocation, a5);
    objc_storeStrong(&v20->_causalReference, a6);
    v20->_type = a7;
    objc_storeStrong(&v20->_referenceAtomBatchFilename, a8);
    v20->_atomBatchFileIndex = a9;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(BMSyncCRDTLocationRow *)self->_location isEqual:v5[1]])
    {
      v6 = [(CKDistributedTimestamp *)self->_timestamp isEqual:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = sub_100025DD8(self->_type);
  v6 = [(BMSyncCRDTLocationRow *)self->_location description];
  v7 = [(CKDistributedTimestamp *)self->_timestamp bm_description];
  v8 = [(CKAtomReference *)self->_causalReference timestamp];
  v9 = [v8 bm_description];
  v10 = [v3 initWithFormat:@"<%@: type=%@, location=%@, atomID=%@, refID=%@ bookmarkfile=%@ bookmarkOffset=%lu filename=%@ atomIndex=%lu>", v4, v5, v6, v7, v9, self->_segmentName, self->_segmentOffset, self->_referenceAtomBatchFilename, self->_atomBatchFileIndex];

  return v10;
}

- (BMSyncCKAtomRow)initWithFMResultSet:(id)a3
{
  v3 = a3;
  v36 = [v3 stringForColumn:@"stream"];
  v4 = [v3 stringForColumn:@"site"];
  v5 = [CKDistributedSiteIdentifier alloc];
  v35 = v4;
  v6 = [v4 dataUsingEncoding:4];
  v7 = [v5 initWithIdentifier:v6];

  v8 = [v3 longForColumn:@"clock"];
  v31 = [v3 longForColumn:@"type"];
  v34 = v7;
  v9 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v7 clockValue:v8];
  v10 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v3 modifier:1];
  v11 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v3 modifier:2];
  v32 = [(BMSyncCRDTLocationRow *)v11 location];
  v12 = [v32 ckMergeableValueIDWithFormatVersion:0];
  v13 = [v3 longForColumn:@"ref_type"];
  v14 = [v3 stringForColumn:@"ref_site"];
  v15 = [CKDistributedSiteIdentifier alloc];
  v30 = v14;
  v16 = [v14 dataUsingEncoding:4];
  v17 = [v15 initWithIdentifier:v16];

  v29 = v17;
  v18 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v17 clockValue:{objc_msgSend(v3, "longForColumn:", @"ref_clock"}];
  if (v12)
  {
    v19 = [[CKAtomReference alloc] initWithMergeableValueID:v12 timestamp:v18 type:v13];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v3 stringForColumn:@"segment_name"];
  v21 = [v3 stringForColumn:@"ref_atom_batch_filename"];
  v22 = v21;
  if (v20)
  {
    v23 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](self, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v10, v9, v11, v19, v31, v20, [v3 longForColumn:@"segment_offset"]);
  }

  else
  {
    if (!v21)
    {
      v24 = v9;
      v27 = [v3 longForColumn:@"value_version"];
      v28 = [v3 dataForColumn:@"value_data"];
      v25 = [(BMSyncCKAtomRow *)self initWithLocation:v10 timestamp:v24 referenceLocation:v11 causalReference:v19 type:v31 valueVersion:v27 valueData:v28];

      goto LABEL_9;
    }

    v23 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:referenceAtomBatchFilename:atomBatchFileIndex:](self, "initWithLocation:timestamp:referenceLocation:causalReference:type:referenceAtomBatchFilename:atomBatchFileIndex:", v10, v9, v11, v19, v31, v21, [v3 intForColumn:@"atom_batch_file_index"]);
  }

  v24 = v9;
  v25 = v23;
LABEL_9:

  return v25;
}

@end