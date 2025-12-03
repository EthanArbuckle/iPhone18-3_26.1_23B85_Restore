@interface PETProtobufRawDecodedMessage
- (BOOL)readFrom:(id)from;
- (PETProtobufRawDecodedMessage)initWithData:(id)data nestedFields:(id)fields;
- (id)dictionaryRepresentation;
@end

@implementation PETProtobufRawDecodedMessage

- (id)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_decodedDict copy];

  return v2;
}

- (BOOL)readFrom:(id)from
{
  fromCopy = from;
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    v6 = 0x1E696A000uLL;
    v7 = 0x1ECE53000;
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v73 = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v73 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v73 & 0x7F) << v9;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      if ([fromCopy hasError])
      {
        v11 = 0;
      }

LABEL_15:
      if ([fromCopy hasError])
      {
        goto LABEL_67;
      }

      v16 = 0;
      v17 = v11 >> 3;
      v18 = v11 & 7;
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          if (v18 != 5)
          {
            goto LABEL_66;
          }

          v22 = *(v6 + 3480);
          v70 = 0;
          v23 = [fromCopy position] + 4;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 4, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v70 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          LODWORD(v25) = v70;
          v46 = [v22 numberWithFloat:v25];
          goto LABEL_49;
        }

        v35 = PBReaderReadData();
        nestedFields = self->_nestedFields;
        v37 = [*(v6 + 3480) numberWithUnsignedInt:v17];
        v38 = [(NSDictionary *)nestedFields objectForKeyedSubscript:v37];

        if (v38)
        {
          v39 = [PETProtobufRawDecodedMessage alloc];
          v40 = self->_nestedFields;
          v41 = [*(v6 + 3480) numberWithUnsignedInt:v17];
          v42 = [(NSDictionary *)v40 objectForKeyedSubscript:v41];
          v43 = [(PETProtobufRawDecodedMessage *)v39 initWithData:v35 nestedFields:v42];

          if (v43)
          {
            [(PETProtobufRawDecodedMessage *)v43 dictionaryRepresentation];
          }

          else
          {
            [v35 base64EncodedStringWithOptions:0];
          }
          v16 = ;
          v7 = 0x1ECE53000uLL;
          v6 = 0x1E696A000uLL;
        }

        else
        {
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v35 encoding:4];
          if (v44)
          {
            v43 = v44;
            v16 = v43;
          }

          else
          {
            v66 = [[PETProtobufRawDecodedMessage alloc] initWithData:v35];
            v67 = v66;
            if (v66)
            {
              [(PETProtobufRawDecodedMessage *)v66 dictionaryRepresentation];
            }

            else
            {
              [v35 base64EncodedStringWithOptions:0];
            }
            v16 = ;

            v43 = 0;
          }
        }
      }

      else
      {
        if ((v11 & 7) != 0)
        {
          if (v18 != 1)
          {
            goto LABEL_66;
          }

          v19 = *(v6 + 3480);
          v71 = 0.0;
          v20 = [fromCopy position] + 8;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 = [v19 numberWithDouble:v71];
LABEL_49:
          v16 = v46;
          goto LABEL_53;
        }

        v26 = 0;
        v27 = v6;
        v28 = 0;
        v29 = 0;
        v30 = *(v27 + 3480);
        while (1)
        {
          v72 = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v72 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (v72 & 0x7F) << v26;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v15 = v28++ >= 9;
          if (v15)
          {
            v34 = 0;
            goto LABEL_42;
          }
        }

        if ([fromCopy hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v29;
        }

LABEL_42:
        v16 = [v30 numberWithLongLong:v34];
        v6 = 0x1E696A000;
      }

LABEL_53:
      if ([fromCopy hasError])
      {
LABEL_66:

LABEL_67:
        objc_autoreleasePoolPop(v8);
        LOBYTE(v68) = 0;
        goto LABEL_68;
      }

      v48 = *(v7 + 1472);
      v49 = *(&self->super.super.isa + v48);
      v50 = [*(v6 + 3480) numberWithUnsignedInt:v17];
      [v49 objectForKeyedSubscript:v50];
      v52 = v51 = v6;

      v53 = *(&self->super.super.isa + v48);
      v54 = [*(v51 + 3480) numberWithUnsignedInt:v17];
      if (v52)
      {
        v55 = [v53 objectForKeyedSubscript:v54];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v57 = *(&self->super.super.isa + v48);
          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
          v59 = [v57 objectForKeyedSubscript:v58];

          v60 = [MEMORY[0x1E695DF70] arrayWithObject:v59];
          v61 = *(&self->super.super.isa + v48);
          v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
          [v61 setObject:v60 forKeyedSubscript:v62];

          v7 = 0x1ECE53000;
        }

        v63 = *(&self->super.super.isa + v48);
        v6 = 0x1E696A000uLL;
        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
        v64 = [v63 objectForKeyedSubscript:v54];
        [v64 addObject:v16];
      }

      else
      {
        [v53 setObject:v16 forKeyedSubscript:v54];
        v6 = 0x1E696A000;
      }

      objc_autoreleasePoolPop(v8);
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v68 = [fromCopy hasError] ^ 1;
LABEL_68:

  return v68;
}

- (PETProtobufRawDecodedMessage)initWithData:(id)data nestedFields:(id)fields
{
  dataCopy = data;
  fieldsCopy = fields;
  v15.receiver = self;
  v15.super_class = PETProtobufRawDecodedMessage;
  v8 = [(PETProtobufRawDecodedMessage *)&v15 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = objc_opt_new();
  decodedDict = v8->_decodedDict;
  v8->_decodedDict = v9;

  objc_storeStrong(&v8->_nestedFields, fields);
  v11 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
  if (![(PETProtobufRawDecodedMessage *)v8 readFrom:v11])
  {

    goto LABEL_6;
  }

  hasError = [v11 hasError];

  if (hasError)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v13 = v8;
LABEL_7:

  return v13;
}

@end