@interface PKWrappedPayment
- (PKWrappedPayment)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKWrappedPayment

- (PKWrappedPayment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKWrappedPayment;
  v5 = [(PKWrappedPayment *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    [(PKWrappedPayment *)v5 setTransactionIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    [(PKWrappedPayment *)v5 setTransactionData:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionInstructionsSignature"];
    [(PKWrappedPayment *)v5 setTransactionInstructionsSignature:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificates"];
    [(PKWrappedPayment *)v5 setCertificates:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantCountryCode"];
    [(PKWrappedPayment *)v5 setMerchantCountryCode:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kextBlacklistVersion"];
    [(PKWrappedPayment *)v5 setKextBlacklistVersion:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentSignature"];
    [(PKWrappedPayment *)v5 setEnrollmentSignature:v12];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SEPCertificates"];
    [(PKWrappedPayment *)v5 setSEPCertificates:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationBlobHash"];
    [(PKWrappedPayment *)v5 setConfirmationBlobHash:v17];

    -[PKWrappedPayment setConfirmationBlobVersion:](v5, "setConfirmationBlobVersion:", [coderCopy decodeIntegerForKey:@"confirmationBlobVersion"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transactionIdentifier = [(PKWrappedPayment *)self transactionIdentifier];
  [coderCopy encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];

  transactionData = [(PKWrappedPayment *)self transactionData];
  [coderCopy encodeObject:transactionData forKey:@"transactionData"];

  transactionInstructionsSignature = [(PKWrappedPayment *)self transactionInstructionsSignature];
  [coderCopy encodeObject:transactionInstructionsSignature forKey:@"transactionInstructionsSignature"];

  certificates = [(PKWrappedPayment *)self certificates];
  [coderCopy encodeObject:certificates forKey:@"certificates"];

  merchantCountryCode = [(PKWrappedPayment *)self merchantCountryCode];
  [coderCopy encodeObject:merchantCountryCode forKey:@"merchantCountryCode"];

  kextBlacklistVersion = [(PKWrappedPayment *)self kextBlacklistVersion];
  [coderCopy encodeObject:kextBlacklistVersion forKey:@"kextBlacklistVersion"];

  enrollmentSignature = [(PKWrappedPayment *)self enrollmentSignature];
  [coderCopy encodeObject:enrollmentSignature forKey:@"enrollmentSignature"];

  sEPCertificates = [(PKWrappedPayment *)self SEPCertificates];
  [coderCopy encodeObject:sEPCertificates forKey:@"SEPCertificates"];

  confirmationBlobHash = [(PKWrappedPayment *)self confirmationBlobHash];
  [coderCopy encodeObject:confirmationBlobHash forKey:@"confirmationBlobHash"];

  [coderCopy encodeInteger:-[PKWrappedPayment confirmationBlobVersion](self forKey:{"confirmationBlobVersion"), @"confirmationBlobVersion"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  transactionIdentifier = [(PKWrappedPayment *)self transactionIdentifier];
  transactionData = [(PKWrappedPayment *)self transactionData];
  v7 = [transactionData length];
  certificates = [(PKWrappedPayment *)self certificates];
  v9 = [v3 stringWithFormat:@"<%@: %p transactionId = %@; transactionData = %tu bytes; certificates = %@;", v4, self, transactionIdentifier, v7, certificates];;

  sEPCertificates = [(PKWrappedPayment *)self SEPCertificates];
  [v9 appendFormat:@" SEPCertificates = %@;", sEPCertificates];

  confirmationBlobHash = [(PKWrappedPayment *)self confirmationBlobHash];
  [v9 appendFormat:@" confirmationBlobHash = %@;", confirmationBlobHash];

  [v9 appendFormat:@" confirmationBlobVersion: %d", -[PKWrappedPayment confirmationBlobVersion](self, "confirmationBlobVersion")];
  transactionInstructionsSignature = [(PKWrappedPayment *)self transactionInstructionsSignature];

  if (transactionInstructionsSignature)
  {
    transactionInstructionsSignature2 = [(PKWrappedPayment *)self transactionInstructionsSignature];
    [v9 appendFormat:@" transactionInstructionsSignature = %tu bytes;", objc_msgSend(transactionInstructionsSignature2, "length")];
  }

  enrollmentSignature = [(PKWrappedPayment *)self enrollmentSignature];

  if (enrollmentSignature)
  {
    enrollmentSignature2 = [(PKWrappedPayment *)self enrollmentSignature];
    [v9 appendFormat:@" enrollmentSignature: %@;", enrollmentSignature2];
  }

  [v9 appendString:@">"];
  v16 = [v9 copy];

  return v16;
}

@end