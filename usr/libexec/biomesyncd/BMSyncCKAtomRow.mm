@interface BMSyncCKAtomRow
- (BMSyncCKAtomRow)initWithFMResultSet:(id)set;
- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type referenceAtomBatchFilename:(id)filename atomBatchFileIndex:(unint64_t)index;
- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type segmentName:(id)name segmentOffset:(unint64_t)offset;
- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type valueVersion:(int64_t)version valueData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BMSyncCKAtomRow

- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type segmentName:(id)name segmentOffset:(unint64_t)offset
{
  locationCopy = location;
  timestampCopy = timestamp;
  referenceLocationCopy = referenceLocation;
  referenceCopy = reference;
  nameCopy = name;
  if (locationCopy)
  {
    if (timestampCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049A5C();
    if (timestampCopy)
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
    objc_storeStrong(&v19->_location, location);
    objc_storeStrong(&v20->_timestamp, timestamp);
    objc_storeStrong(&v20->_referenceLocation, referenceLocation);
    objc_storeStrong(&v20->_causalReference, reference);
    v20->_type = type;
    objc_storeStrong(&v20->_segmentName, name);
    v20->_segmentOffset = offset;
  }

  return v20;
}

- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type valueVersion:(int64_t)version valueData:(id)data
{
  locationCopy = location;
  timestampCopy = timestamp;
  referenceLocationCopy = referenceLocation;
  referenceCopy = reference;
  dataCopy = data;
  if (locationCopy)
  {
    if (timestampCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049B44();
    if (timestampCopy)
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
    objc_storeStrong(&v18->_location, location);
    objc_storeStrong(&v19->_timestamp, timestamp);
    objc_storeStrong(&v19->_referenceLocation, referenceLocation);
    objc_storeStrong(&v19->_causalReference, reference);
    v19->_type = type;
    v19->_valueVersion = version;
    objc_storeStrong(&v19->_valueData, data);
  }

  return v19;
}

- (BMSyncCKAtomRow)initWithLocation:(id)location timestamp:(id)timestamp referenceLocation:(id)referenceLocation causalReference:(id)reference type:(unint64_t)type referenceAtomBatchFilename:(id)filename atomBatchFileIndex:(unint64_t)index
{
  locationCopy = location;
  timestampCopy = timestamp;
  referenceLocationCopy = referenceLocation;
  referenceCopy = reference;
  filenameCopy = filename;
  if (locationCopy)
  {
    if (timestampCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100049C2C();
    if (timestampCopy)
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
    objc_storeStrong(&v19->_location, location);
    objc_storeStrong(&v20->_timestamp, timestamp);
    objc_storeStrong(&v20->_referenceLocation, referenceLocation);
    objc_storeStrong(&v20->_causalReference, reference);
    v20->_type = type;
    objc_storeStrong(&v20->_referenceAtomBatchFilename, filename);
    v20->_atomBatchFileIndex = index;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  bm_description = [(CKDistributedTimestamp *)self->_timestamp bm_description];
  timestamp = [(CKAtomReference *)self->_causalReference timestamp];
  bm_description2 = [timestamp bm_description];
  v10 = [v3 initWithFormat:@"<%@: type=%@, location=%@, atomID=%@, refID=%@ bookmarkfile=%@ bookmarkOffset=%lu filename=%@ atomIndex=%lu>", v4, v5, v6, bm_description, bm_description2, self->_segmentName, self->_segmentOffset, self->_referenceAtomBatchFilename, self->_atomBatchFileIndex];

  return v10;
}

- (BMSyncCKAtomRow)initWithFMResultSet:(id)set
{
  setCopy = set;
  v36 = [setCopy stringForColumn:@"stream"];
  v4 = [setCopy stringForColumn:@"site"];
  v5 = [CKDistributedSiteIdentifier alloc];
  v35 = v4;
  v6 = [v4 dataUsingEncoding:4];
  v7 = [v5 initWithIdentifier:v6];

  v8 = [setCopy longForColumn:@"clock"];
  v31 = [setCopy longForColumn:@"type"];
  v34 = v7;
  v9 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v7 clockValue:v8];
  v10 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:setCopy modifier:1];
  v11 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:setCopy modifier:2];
  location = [(BMSyncCRDTLocationRow *)v11 location];
  v12 = [location ckMergeableValueIDWithFormatVersion:0];
  v13 = [setCopy longForColumn:@"ref_type"];
  v14 = [setCopy stringForColumn:@"ref_site"];
  v15 = [CKDistributedSiteIdentifier alloc];
  v30 = v14;
  v16 = [v14 dataUsingEncoding:4];
  v17 = [v15 initWithIdentifier:v16];

  v29 = v17;
  v18 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v17 clockValue:{objc_msgSend(setCopy, "longForColumn:", @"ref_clock"}];
  if (v12)
  {
    v19 = [[CKAtomReference alloc] initWithMergeableValueID:v12 timestamp:v18 type:v13];
  }

  else
  {
    v19 = 0;
  }

  v20 = [setCopy stringForColumn:@"segment_name"];
  v21 = [setCopy stringForColumn:@"ref_atom_batch_filename"];
  v22 = v21;
  if (v20)
  {
    v23 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](self, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v10, v9, v11, v19, v31, v20, [setCopy longForColumn:@"segment_offset"]);
  }

  else
  {
    if (!v21)
    {
      v24 = v9;
      v27 = [setCopy longForColumn:@"value_version"];
      v28 = [setCopy dataForColumn:@"value_data"];
      v25 = [(BMSyncCKAtomRow *)self initWithLocation:v10 timestamp:v24 referenceLocation:v11 causalReference:v19 type:v31 valueVersion:v27 valueData:v28];

      goto LABEL_9;
    }

    v23 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:referenceAtomBatchFilename:atomBatchFileIndex:](self, "initWithLocation:timestamp:referenceLocation:causalReference:type:referenceAtomBatchFilename:atomBatchFileIndex:", v10, v9, v11, v19, v31, v21, [setCopy intForColumn:@"atom_batch_file_index"]);
  }

  v24 = v9;
  v25 = v23;
LABEL_9:

  return v25;
}

@end